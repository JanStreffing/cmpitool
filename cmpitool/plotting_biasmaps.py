def bias_statistics(model, obs):
    '''
    AUTHORS:
    Jan Streffing		2026-09-28	Replaces rmsd() and md() in plotting_biasmaps

    DESCRIPTION:
    Area-weighted bias, mean absolute error and root-mean-square deviation
    of model minus obs, with the same cos(lat) weights as the fldmean in
    calculate_errors. Grid points where either field is NaN are left out.

    INPUT:
    model, obs                  DataArrays on the same lat/lon grid; size-1
                                dimensions such as time are ignored

    RETURN:
    bias, mae, rmsd             Floats in the units of the variable
    '''
    import numpy as np

    diff = (model - obs).squeeze(drop=True)
    weights = np.cos(np.deg2rad(diff.lat))

    def fldmean(field):
        return float(field.weighted(weights).mean(("lon", "lat")))

    return fldmean(diff), fldmean(abs(diff)), float(np.sqrt(fldmean(diff**2)))


def plotting_biasmaps(ds_model, ds_obs, models, seasons, obs, out_path, verbose, biasmap_limits=None):
    '''
    AUTHORS:
    Jan Streffing		2024-04-02	Copied from plotting_heatmaps

    DESCRIPTION:
    This optional function plots bias maps for every variable and season

    INPUT:
    ds_model                    Ordered dictionary containing loaded model data
    ds_obs                      Ordered dictionary containing loaded observational data
    models         		List of models to be evaluated
    seasons                     List of seasons to be evaluated
    obs                         List of variables objects for which observations
                                will be loaded
    out_path                    String pointing to the folder in which results will be stored
    verbose                     Boolean for verbose output

    RETURN:
    '''


    from collections import OrderedDict
    from tqdm import tqdm
    import matplotlib.pyplot as plt
    import numpy as np
    import pandas as pd
    import cartopy.crs as ccrs
    import cartopy.feature as cfeature
    from cartopy.util import add_cyclic_point

    num_levels = 11  # Adjust as needed
    std_range_multiplier = 3

    def getlimit(var):
        # Default limits dictionary
        default_limits = {
            'siconc': 60.
        }
        
        # If custom limits are provided, use those; otherwise use defaults
        if biasmap_limits is not None and var in biasmap_limits:
            return biasmap_limits.get(var)
            
        return default_limits.get(var, None)

    for model in models:
        print('Plotting biasmaps for: ',model.name)
        for var in tqdm(model.variables):
            for depth in var.depths:
                for seas in seasons:
                    if depth == 'surface':
                        levelname=''
                    else:
                        levelname=depth+' '
                    if var.name == 'zos':
                        levelname='st. dev. '

                    fig = plt.figure(figsize=(6, 4.5))
                    ax = plt.axes(projection=ccrs.PlateCarree())
                    ax.add_feature(cfeature.COASTLINE, zorder=3)

                    data = ds_model[var.name, depth, seas, model.name][var.name].values
                    obsp = np.squeeze(ds_obs[var.name, depth, seas][var.name].values)
                    data_diff = data - obsp

                    # Grid information from CDO:
                    xsize = 180
                    ysize = 91
                    xfirst = 0
                    xinc = 2
                    yfirst = -90
                    yinc = 2

                    # Create lattitude and longitude vectors
                    lon = np.arange(xfirst, xfirst + xsize * xinc, xinc)
                    lat = np.arange(yfirst, yfirst + ysize * yinc, yinc)

                    # Add cyclic point to the data
                    data_to_plot, lon_cyclic = add_cyclic_point(data_diff, coord=lon)

                    # Compute levels
                    std = np.nanstd(data_to_plot)
                    if not getlimit(var.name):
                        limit = std_range_multiplier * std
                    else:
                        limit = getlimit(var.name)
                    levels = np.linspace(-limit, limit, num_levels)
                    try:
                        imf = plt.contourf(lon_cyclic, lat, data_to_plot, cmap=plt.cm.PuOr_r, levels=levels, extend='both', transform=ccrs.PlateCarree())
                    except Exception:
                        print('hit cartopy bug for this plot: https://github.com/SciTools/cartopy/issues/2176, not output for'+var.name, depth, seas, model.name)
                        plt.close(fig)
                        continue
                    ax.set_title(model.name + ' ' + var.name + ' ' + str(depth) + ' ' + seas + ' bias vs. '+var.obs, fontweight="bold")
                    plt.tight_layout()

                    gl = ax.gridlines(crs=ccrs.PlateCarree(), draw_labels=True,
                                      linewidth=1, color='gray', alpha=0.2, linestyle='-')
                    gl.bottom_labels = False

                    # Add area-weighted bias, MAE and RMSD to plot. Three significant
                    # digits, since pr in kg m-2 s-1 rounds to 0.0 at three decimals.
                    biasval, maeval, rmsdval = bias_statistics(ds_model[var.name, depth, seas, model.name][var.name],
                                                               ds_obs[var.name, depth, seas][var.name])
                    props = dict(boxstyle='round,pad=0.1', facecolor='white', alpha=0.5)
                    ax.text(0.02, 0.35, f'bias={biasval:.3g}', transform=ax.transAxes, fontsize=13, verticalalignment='top', bbox=props, zorder=4)
                    ax.text(0.02, 0.25, f'mae={maeval:.3g}', transform=ax.transAxes, fontsize=13, verticalalignment='top', bbox=props, zorder=4)
                    ax.text(0.02, 0.15, f'rmsd={rmsdval:.3g}', transform=ax.transAxes, fontsize=13, verticalalignment='top', bbox=props, zorder=4)

                    cbar_ax_abs = plt.axes([0.15, 0.11, 0.7, 0.05])
                    cbar_ax_abs.tick_params(labelsize=12)
                    cb = plt.colorbar(imf, cax=cbar_ax_abs, orientation='horizontal')
                    cb.ax.tick_params(labelsize='12')

                    plt.savefig(out_path + 'plot/maps/' + model.name + '_' + var.name + '_' + str(depth) + '_' + seas + '.png', dpi=200, bbox_inches='tight')
                    plt.close(fig)

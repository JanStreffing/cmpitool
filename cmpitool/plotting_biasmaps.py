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
    Jan Streffing		2026-09-29	Grid from the data, explicit figure and axes

    DESCRIPTION:
    This optional function plots a map of model minus obs for every variable,
    level and season, with the area-weighted bias, MAE and RMSD.

    INPUT:
    ds_model                    Ordered dictionary containing loaded model data
    ds_obs                      Ordered dictionary containing loaded observational data
    models         		List of Model objects to be evaluated
    seasons                     List of seasons to be evaluated
    obs                         List of Variable objects
    out_path                    String pointing to the folder in which results will be stored
    verbose                     Boolean for verbose output
    biasmap_limits              Colour ranges by variable name, overriding
                                Variable.default_limit; None gives 3 standard deviations

    RETURN:
    '''

    from tqdm import tqdm
    import matplotlib.pyplot as plt
    import numpy as np
    import cartopy.crs as ccrs
    import cartopy.feature as cfeature
    from cartopy.util import add_cyclic_point

    num_levels = 11
    std_range_multiplier = 3

    def getlimit(var):
        # Limits passed in override the variable's default; None means 3 standard deviations
        if biasmap_limits is not None and var.name in biasmap_limits:
            return biasmap_limits[var.name]
        return var.default_limit

    for model in models:
        print('Plotting biasmaps for: ',model.name)
        for var in tqdm(model.variables):
            for depth in var.depths:
                for seas in seasons:
                    model_field = ds_model[var.name, depth, seas, model.name][var.name]
                    obs_field = ds_obs[var.name, depth, seas][var.name]
                    diff = (model_field - obs_field).squeeze(drop=True).transpose('lat', 'lon')

                    # Close the gap at the date line
                    data_to_plot, lon_cyclic = add_cyclic_point(diff.values, coord=diff.lon.values)

                    limit = getlimit(var)
                    if not limit:
                        limit = std_range_multiplier * np.nanstd(data_to_plot)
                    levels = np.linspace(-limit, limit, num_levels)

                    fig = plt.figure(figsize=(6, 4.5))
                    ax = fig.add_subplot(projection=ccrs.PlateCarree())
                    ax.add_feature(cfeature.COASTLINE, zorder=3)
                    try:
                        imf = ax.contourf(lon_cyclic, diff.lat.values, data_to_plot, cmap=plt.cm.PuOr_r, levels=levels,
                                          extend='both', transform=ccrs.PlateCarree())
                    except Exception:
                        print('hit cartopy bug for this plot: https://github.com/SciTools/cartopy/issues/2176, not output for'+var.name, depth, seas, model.name)
                        plt.close(fig)
                        continue
                    ax.set_title(model.name + ' ' + var.name + ' ' + str(depth) + ' ' + seas + ' bias vs. '+var.obs, fontweight="bold")
                    fig.tight_layout()

                    gl = ax.gridlines(crs=ccrs.PlateCarree(), draw_labels=True,
                                      linewidth=1, color='gray', alpha=0.2, linestyle='-')
                    gl.bottom_labels = False

                    # Area-weighted bias, MAE and RMSD. Three significant digits,
                    # since pr in kg m-2 s-1 rounds to 0.0 at three decimals.
                    biasval, maeval, rmsdval = bias_statistics(model_field, obs_field)
                    props = dict(boxstyle='round,pad=0.1', facecolor='white', alpha=0.5)
                    for y, text in [(0.35, f'bias={biasval:.3g}'), (0.25, f'mae={maeval:.3g}'), (0.15, f'rmsd={rmsdval:.3g}')]:
                        ax.text(0.02, y, text, transform=ax.transAxes, fontsize=13, verticalalignment='top', bbox=props, zorder=4)

                    cbar_ax = fig.add_axes([0.15, 0.11, 0.7, 0.05])
                    cb = fig.colorbar(imf, cax=cbar_ax, orientation='horizontal')
                    cb.ax.tick_params(labelsize=12)

                    fig.savefig(out_path + 'plot/maps/' + model.name + '_' + var.name + '_' + str(depth) + '_' + seas + '.png', dpi=200, bbox_inches='tight')
                    plt.close(fig)

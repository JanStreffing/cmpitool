def calculate_errors(ds_model, ds_obs, models, regions, obs, seasons, verbose):
    '''
    Calculate the area-weighted mean absolute error of every model field in every region.

    Parameters
    ----------
    ds_model : OrderedDict
        Dictionary containing model data, organized by variable, depth, season, and model name
    ds_obs : OrderedDict
        Dictionary containing observational data, organized by variable, depth, and season
    models : list
        List of Model objects to evaluate
    regions : list
        List of Region objects with their masks (see add_masks)
    obs : list
        List of Variable objects; their levels make up the field dimension
    seasons : list
        List of seasons to evaluate (e.g., ['DJF', 'MAM', 'JJA', 'SON'])
    verbose : bool
        Whether to print detailed information during execution

    Returns
    -------
    mean_error : xarray.DataArray
        Mean absolute error with dimensions (model, field, season, region). A field is
        a variable at one level, named 'variable/level' (e.g. 'thetao/100m'), with the
        coordinates variable and level along it. Fields a model does not provide are NaN.

    Notes
    -----
    The absolute error |model - obs| is taken for each file in the precision of the
    files, so float32 input gives the float32 differences the reference CSVs were
    made with. The errors are then stacked, and the mean over each region is one
    weighted mean with the weights mask * cos(lat). Points where the error is NaN
    are left out of the weights.

    AUTHORS:
    Jan Streffing               2022-11-30      Split off from main tool
    Jan Streffing               2026-09-29      One weighted mean over all regions at once
    '''

    import numpy as np
    import xarray as xr
    from tqdm import tqdm

    print('Calculating absolute error and field mean of abs error')

    fields = [(var, depth) for var in obs for depth in var.depths]

    per_model = []
    for model in tqdm(models):
        provided = {var.name for var in model.variables}
        per_field = []
        for var, depth in fields:
            per_season = []
            for seas in seasons:
                obs_field = ds_obs[var.name, depth, seas][var.name]
                if var.name in provided:
                    error = abs(ds_model[var.name, depth, seas, model.name][var.name] - obs_field)
                else:
                    error = xr.full_like(obs_field, np.nan, dtype=float)
                per_season.append(error.squeeze(drop=True).reset_coords(drop=True).transpose('lat', 'lon'))
            per_field.append(xr.concat(per_season, dim='season'))
        per_model.append(xr.concat(per_field, dim='field'))

    error = xr.concat(per_model, dim='model').assign_coords(
        model=[model.name for model in models],
        field=[var.name+'/'+depth for var, depth in fields],
        variable=('field', [var.name for var, depth in fields]),
        level=('field', [depth for var, depth in fields]),
        season=list(seasons))

    masks = xr.concat([region.mask.reset_coords(drop=True) for region in regions], dim='region')
    masks = masks.assign_coords(region=[region.name for region in regions])
    weights = masks * np.cos(np.deg2rad(masks.lat))

    mean_error = error.weighted(weights).mean(('lat', 'lon')).transpose('model', 'field', 'season', 'region')
    if verbose:
        print(mean_error)
    return mean_error

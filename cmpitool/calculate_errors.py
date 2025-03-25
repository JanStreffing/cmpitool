def calculate_errors(ds_model, ds_obs, models, regions, seasons, verbose):
    '''
    Calculate error metrics between model outputs and observations.
    
    This function calculates the pointwise absolute error and the area-weighted mean 
    absolute error between climate model outputs and observational data. It performs 
    calculations separately for each model, variable, depth level, region, and season.
    
    Parameters
    ----------
    ds_model : OrderedDict
        Dictionary containing model data, organized by variable, depth, season, and model name
    ds_obs : OrderedDict
        Dictionary containing observational data, organized by variable, depth, and season
    models : list
        List of climate_model objects to evaluate
    regions : list
        List of region objects defining geographical areas for evaluation
    seasons : list
        List of seasons to evaluate (e.g., ['DJF', 'MAM', 'JJA', 'SON'])
    verbose : bool
        Whether to print detailed information during execution
        
    Returns
    -------
    abs_error : OrderedDict
        Dictionary containing fields of absolute error between model and observational data,
        organized by variable, depth, season, model name, and region name
    mean_error : OrderedDict
        Dictionary containing area-weighted mean values of absolute error,
        organized by variable, depth, season, model name, and region name
        
    Notes
    -----
    The function calculates the root mean square error (RMSE) between model outputs
    and observations within each specified region mask. Then it computes the
    area-weighted mean of these error fields using cosine latitude weighting.
    
    Examples
    --------
    >>> from collections import OrderedDict
    >>> from cmpitool import cmpisetup, loading_models, loading_obs, add_masks, calculate_errors
    >>> variable, region, climate_model, *variables = cmpisetup()
    >>> # Setup models, load data, and add masks to regions
    >>> abs_error, mean_error = calculate_errors(ds_model, ds_obs, models, regions, seasons, verbose=True)
    
    AUTHORS:
    Jan Streffing               2022-11-30      Split off from main tool
    '''

    from collections import OrderedDict
    from tqdm import tqdm
    import numpy as np

    print('Calculating absolute error and field mean of abs error')

    # Returns equvalent to cdo fldmean ()
    def fldmean(ds):
        weights = np.cos(np.deg2rad(ds.lat))
        weights.name = "weights"
        ds_weighted = ds.weighted(weights)
        return ds.mean(("lon", "lat"))


    abs_error = OrderedDict()
    mean_error = OrderedDict()

    for model in tqdm(models):
        for var in model.variables:
            for depth in var.depths:
                for region in regions:
                    for seas in seasons:
                        abs_error[var.name,depth,seas,model.name,region.name]=np.sqrt((ds_model[var.name,depth,seas,model.name].where(region.mask)-
                                                           ds_obs[var.name,depth,seas]).where(region.mask)*
                                                          (ds_model[var.name,depth,seas,model.name].where(region.mask)-
                                                           ds_obs[var.name,depth,seas].where(region.mask)))
                        mean_error[var.name,depth,seas,model.name,region.name] = fldmean(abs_error[var.name,depth,seas,model.name,region.name])


    return abs_error, mean_error

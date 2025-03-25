def loading_models(models, model_path, seasons, time, verbose):
    '''
    Load model data for comparison with observations.
    
    This function loads climate model output data for all specified models, variables,
    depth levels, and seasons. It expects files to follow a specific naming convention
    and returns an ordered dictionary containing all the loaded data.
    
    Parameters
    ----------
    models : list
        List of climate_model objects to be evaluated
    model_path : str
        Path to directory containing preprocessed model data files
    seasons : list
        List of seasons to be evaluated (e.g. ['DJF', 'MAM', 'JJA', 'SON'])
    time : str
        Time period string in format 'YYYYMM-YYYYMM' (e.g. '198912-201411')
    verbose : bool
        Whether to print detailed information during execution
        
    Returns
    -------
    ds_model : OrderedDict
        Ordered dictionary containing loaded model data with keys in the format
        (variable_name, depth, season, model_name)
        
    Notes
    -----
    Expected file naming convention:
    ${variable}_${modelname}_${timeperiod}_${depth}_${season}.nc
    
    Examples
    --------
    >>> from collections import OrderedDict
    >>> from cmpitool import cmpisetup, loading_models
    >>> variable, region, climate_model, *variables = cmpisetup()
    >>> models = [climate_model(name='MODEL', variables=[variables[0]])]
    >>> seasons = ['DJF', 'JJA']
    >>> ds_model = loading_models(models, '/path/to/data/', seasons, '198912-201411', True)
    
    AUTHORS:
    Jan Streffing               2022-11-30      Split off from main tool
    '''

    from collections import OrderedDict
    import xarray as xr
    from tqdm import tqdm

    print('Loading model data')

    ds_model = OrderedDict()

    for model in tqdm(models):
        for var in model.variables:
            for depth in var.depths:
                for seas in seasons:
                    if verbose:
                        print('loading '+model_path+var.name+'_'+model.name+'_'+time+'_'+depth+'_'+seas+'.nc')
                    intermediate = xr.open_mfdataset(model_path+var.name+'_'+model.name+'_'+time+'_'+depth+'_'+seas+'.nc')
                    intermediate = intermediate.squeeze(drop=True)
                    ds_model[var.name,depth,seas,model.name] = intermediate.compute()
                    try:
                        ds_model[var.name,depth,seas,model.name]=ds_model[var.name,depth,seas,model.name].drop('time_bnds')
                    except:
                        pass
                    try:
                        ds_model[var.name,depth,seas,model.name]=ds_model[var.name,depth,seas,model.name].drop('depth')
                    except:
                        pass
    return ds_model

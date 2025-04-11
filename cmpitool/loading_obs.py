def loading_obs(obs, obs_path, seasons, verbose):
    '''
    Load observational data for comparison with climate models.
    
    This function loads observational datasets that will be used as the reference 
    for evaluating climate model performance. It organizes the data by variable,
    depth/level, and season for direct comparison with model outputs.
    
    Parameters
    ----------
    obs : list
        List of variable objects for which observations will be loaded
    obs_path : str
        Path to directory containing observational data files
    seasons : list
        List of seasons to load (e.g., ['DJF', 'MAM', 'JJA', 'SON'])
    verbose : bool
        Whether to print detailed information during execution
        
    Returns
    -------
    ds_obs : OrderedDict
        Dictionary containing loaded observational data, organized by
        variable name, depth, and season
        
    Notes
    -----
    Expected file naming convention:
    ${variable}_${obs_dataset}_${depth}_${season}.nc
    
    If you modify or replace the default observational datasets, you'll need to 
    generate new absolute errors and copy them into eval/$reanalysis/ directory
    for proper comparison.
    
    Examples
    --------
    >>> from cmpitool import cmpisetup, loading_obs
    >>> variable, region, climate_model, *variables = cmpisetup()
    >>> obs = [variables[0], variables[1]]  # Select specific variables
    >>> ds_obs = loading_obs(obs, 'path/to/obs/', ['DJF', 'JJA'], verbose=True)
    
    AUTHORS:
    Jan Streffing               2022-11-30      Split off from main tool
    '''

    from collections import OrderedDict
    import xarray as xr
    from tqdm import tqdm

    print('Loading obs data')

    ds_obs = OrderedDict()

    for var in tqdm(obs):
        for depth in var.depths:
            for seas in seasons:
                if verbose:
                    print('loading '+obs_path+var.name+'_'+var.obs+'_'+depth+'_'+seas+'.nc')

                intermediate = xr.open_dataset(obs_path+var.name+'_'+var.obs+'_'+depth+'_'+seas+'.nc')
                ds_obs[var.name,depth,seas] = intermediate.compute()
                try:
                    ds_obs[var.name,depth,seas]=ds_obs[var.name,depth,seas].drop('time_bnds')
                except:
                    pass
                try:
                    ds_obs[var.name,depth,seas]=ds_obs[var.name,depth,seas].drop('time_bnds_2')
                except:
                    pass
                try:
                    ds_obs[var.name,depth,seas]=ds_obs[var.name,depth,seas].drop('depth')
                except:
                    pass


    return ds_obs

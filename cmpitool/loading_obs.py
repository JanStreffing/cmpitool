def loading_obs(obs, obs_path, seasons, verbose):
    '''
    AUTHORS:
    Jan Streffing		2022-11-30	Split off from main tool

    DESCRIPTION:
    This function loads the observational data against which your model will be
    compared. The same observational data was also used to compare the CMIP6 
    models against. From the differences in the comparisions the CMIP score 
    can be calculated.
    Note: If you modify / overwrite this default, you need to generate new absolute
    errors and copy them into eval/$reanalysis/
    
    INPUT:
    obs         		List of variables objects for which observations
                                will be loaded
    obs_path                    Path towards observational data
    sesons                      List of seasons to be loaded
    verbose                     Boolean controlling verbose output

    RETURN:
    ds_obs		        Ordered dictionary containing loaded data
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

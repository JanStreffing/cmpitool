def loading_models(models, model_path, seasons, time, verbose):
    '''
    AUTHORS:
    Jan Streffing		2022-11-30	Split off from main tool

    DESCRIPTION:
    This function loads the model data against that is compared against obs data.
    
    INPUT:
    models         		List of models to be evaluated
    model_path                  Path containing preprocessed model data
    seasons                     List of seasons to be evaluated
    time                        String with time period
    verbose                     Boolean for verbose output

    RETURN:
    ds_model		        Ordered dictionary containing loaded model data
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

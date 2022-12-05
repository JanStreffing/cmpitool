def calculate_errors(ds_model, ds_obs, models, regions, seasons, verbose):
    '''
    AUTHORS:
    Jan Streffing		2022-11-30	Split off from main tool

    DESCRIPTION:
    This function calculates the pointwise absolute error and the mean absolute error 
    between your model(s) and the observational data. It does so separatly for each
    model, region, season, variable and optionally depth.
    
    INPUT:
    ds_model                      Ordered dictionary containing your model data
    ds_obs                      Ordered dictionary containing observational data
    models                      List of models to be evaluated
    regions                     List of regions to be evaluated
    seasons                     List of seasons to be evaluated
    verbose                     Boolean for verbose output

    RETURN:
    abs_error		        Ordered dictionary containing fields of absolute error
                                between model and obs data
    mean_error                  Ordered dictionary containing fields area weighted mean
                                of abs_error
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

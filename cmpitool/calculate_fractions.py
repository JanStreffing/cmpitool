def calculate_fractions(models, regions, seasons, mean_error, eval_error_mean, verbose):
    '''
    AUTHORS:
    Jan Streffing		2022-11-30	Split off from main tool

    DESCRIPTION:
    This function calculates the pointwise absolute error and the mean absolute error 
    between your model(s) and the observational data. It does so separatly for each
    model, region, season, variable and optionally depth.
    
    INPUT:
    models                      List of models against which we evaluate
    regions                     List of regions to be evaluated
    seasons                     List of seasons to be evaluated
    mean_error                  Ordered dictionary containing fields area weighted mean
                                of abs_error
    eval_error_mean             Weighted area means of evaluation model errors
    verbose                     Boolean for verbose output

    RETURN:
    error_fraction              Ordered dictionary containing the fraction of error 
                                between your model / evaluation model mean
    '''

    from collections import OrderedDict
    from tqdm import tqdm
    import numpy as np

    print('Calculating ratio of current model error to evaluation model error')

    error_fraction = OrderedDict()

    sum=0
    for model in tqdm(models):
        for var in model.variables:
            for region in regions:
                for depth in var.depths:
                    for seas in seasons:
                        if var.domain == 'oce' and region.domain == 'land':
                            if verbose:
                                print('setting nan for', var.name,depth,seas,model.name,region.name)
                            error_fraction[var.name,depth,seas,model.name,region.name] = mean_error[var.name,depth,seas,model.name,region.name] * np.nan
                        else:
                            if verbose:
                                print('using calculated value for', var.name,depth,seas,model.name,region.name)
                            error_fraction[var.name,depth,seas,model.name,region.name] = mean_error[var.name,depth,seas,model.name,region.name] / eval_error_mean[var.name,region.name,depth,seas]

    return error_fraction

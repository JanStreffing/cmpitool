def calculate_fractions(models, regions, seasons, mean_error, eval_error_mean, verbose):
    '''
    Calculate performance fractions comparing model errors against reference models.
    
    This function computes the Climate Model Performance Index (CMPI) fractions by
    dividing model error metrics by the average error of reference models. These
    fractions indicate relative model performance where values below 1.0 indicate
    better performance than the reference models average.
    
    Parameters
    ----------
    models : list
        List of climate_model objects being evaluated
    regions : list
        List of region objects defining geographical areas for evaluation
    seasons : list
        List of seasons evaluated (e.g., ['DJF', 'MAM', 'JJA', 'SON'])
    mean_error : OrderedDict
        Dictionary containing area-weighted mean error values for models being evaluated
    eval_error_mean : dict
        Dictionary containing error values for reference models
    verbose : bool
        Whether to print detailed information during execution
        
    Returns
    -------
    error_fraction : OrderedDict
        Dictionary containing performance fractions for each model, variable, 
        region, and season. Values below 1.0 indicate better than average performance.
        
    Notes
    -----
    The CMPI value is calculated following the methodology of Reichler and Kim (2008),
    where the error of a model is divided by the mean error of reference models for
    the same variable, region, and season. This normalization allows for comparison
    across different variables with different physical units.
    
    Examples
    --------
    >>> error_fraction = calculate_fractions(models, regions, seasons, 
    ...                                     mean_error, eval_error_mean, verbose=True)
    
    AUTHORS:
    Jan Streffing               2022-11-30      Split off from main tool
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

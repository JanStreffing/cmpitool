def write_errors(abs_error, mean_error, models, regions, seasons, out_path, use_for_eval, eval_path, verbose):
    '''
    Write calculated error metrics to CSV files for analysis and evaluation.
    
    This function exports the calculated absolute error metrics to CSV files
    for each model. These files can be used for further analysis or as reference
    data for evaluating other models. If use_for_eval is True, files are also
    copied to the evaluation directory for use as reference data.
    
    Parameters
    ----------
    abs_error : OrderedDict
        Dictionary containing fields of absolute error between models and observations
    mean_error : OrderedDict
        Dictionary containing area-weighted means of absolute error fields
    models : list
        List of climate_model objects being evaluated
    regions : list
        List of region objects used in the evaluation
    seasons : list
        List of seasons evaluated (e.g., ['DJF', 'MAM', 'JJA', 'SON'])
    out_path : str
        Path to directory where output CSV files will be written
    use_for_eval : bool
        Whether to copy results to evaluation directory for use as reference data
    eval_path : str
        Path to directory where evaluation reference data is stored
    verbose : bool
        Whether to print detailed information during execution
        
    Returns
    -------
    None
        Files are written to disk at specified locations
        
    Notes
    -----
    CSV files are organized with columns for:
    - Variable name
    - Region name
    - Level/depth
    - Season
    - Absolute mean error value
    
    If use_for_eval is True, these files can later be used as reference for
    evaluating other models via the eval_models parameter in cmpitool.
    
    Examples
    --------
    >>> write_errors(abs_error, mean_error, models, regions, seasons, 
    ...              'output/', False, 'eval/ERA5/', verbose=True)
    
    AUTHORS:
    Jan Streffing               2022-11-30      Split off from main tool
    '''
    
    import csv
    from tqdm import tqdm
    import numpy as np
    import shutil

    print('Writing field mean of errors into csv files')

    for model in tqdm(models):
        with open(out_path+'abs/'+model.name+'.csv', 'w', newline='') as csvfile:
            writer = csv.writer(csvfile, delimiter=' ',quotechar='|', quoting=csv.QUOTE_MINIMAL)
            writer.writerow(['Variable','Region','Level','Season','AbsMeanError'])
            for var in model.variables:
                for region in regions:
                    for depth in var.depths:
                        for seas in seasons:
                            if verbose:
                                print(seas, depth, region.name, var.name, model.name)
                            writer.writerow([var.name,region.name,depth,seas,np.squeeze(mean_error[var.name,depth,seas,model.name,region.name].to_array(var.name).values[0])])
        if use_for_eval:
             shutil.copyfile(out_path+'abs/'+model.name+'.csv', eval_path+model.name+'.csv')   

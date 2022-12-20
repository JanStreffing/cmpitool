def write_errors(abs_error, mean_error, models, regions, seasons, out_path, use_for_eval, eval_path, verbose):
    '''
    AUTHORS:
    Jan Streffing		2022-11-30	Split off from main tool

    DESCRIPTION:
    This function calculates the pointwise absolute error and the mean absolute error 
    between your model(s) and the observational data. It does so separatly for each
    model, region, season, variable and optionally depth.
    
    INPUT:
    abs_error		        Ordered dictionary containing fields of absolute error
                                between model and obs data
    mean_error                  Ordered dictionary containing fields area weighted mean
                                of abs_error
    models                      List of models to be evaluated
    regions                     List of regions to be evaluated
    seasons                     List of seasons to be evaluated
    out_path                    Path to folder containing absolute error csv files
    eval_path                   Path to folder containing absolute errors of evaluation
                                experiments
    verbose                     Boolean for verbose output

    RETURN:
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

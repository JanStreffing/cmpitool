def read_errors(obs, eval_models, regions, seasons, out_path, eval_path, n_implemented_var, verbose):
    '''
    AUTHORS:
    Jan Streffing		2022-11-30	Split off from main tool

    DESCRIPTION:
    This function calculates the pointwise absolute error and the mean absolute error 
    between your model(s) and the observational data. It does so separatly for each
    model, region, season, variable and optionally depth.
    
    INPUT:
    obs                         List of variable objects of observations
    models                      List of models against which we evaluate
    regions                     List of regions to be evaluated
    seasons                     List of seasons to be evaluated
    out_path                    Path to folder containing absolute error csv files
    eval_path                   Path to folder containing absolute errors of evaluation
                                experiments
    n_implemented_var           Number of variables currently included in default 
                                CMIP6 evaluation
    verbose                     Boolean for verbose output

    RETURN:
    eval_error_mean             Weighted area means of evaluation model errors
    '''

    import csv
    from tqdm import tqdm
    import numpy as np
    import pandas as pd
    import warnings
    from collections import OrderedDict


    print('Reading precalculated cmip6 field mean of errors from csv files')

    max_depth=0
    for var in obs:
        if len(var.depths) > max_depth:
            max_depth = len(var.depths)

    regions_names = []
    for region in regions:
        regions_names.append(region.name)
        
    collect = np.empty([len(eval_models),n_implemented_var,len(regions),max_depth,len(seasons)])*np.nan
    i=0
    for eval_model in tqdm(eval_models):
        df = pd.read_csv(eval_path+eval_model.name+'.csv', delimiter=' ')
        values = df['AbsMeanError']
        regions_csv = df['Region']
        var_csv = df['Variable']
        season_csv = df['Season']
        j=0
        r=0
        for var in obs:
            k=0
            a=(df['Variable']==var.name).to_list()
            if verbose:
                if any(a): # Check if variable appears in list. If not, skip it.
                    print('reading: ',eval_model.name,var.name)
                else:
                    print('filling: ',eval_model.name,var.name)

            for region in regions:
                l=0
                for depth in var.depths:
                    m=0
                    for seas in seasons:
                        if any(a): # Check if variable appears in csv. If not, skip it.
                            if regions_csv[r] not in regions_names: # Check if region from csv part of the analysis. Else advance
                                while True:
                                    r+=1
                                    if regions_csv[r] in regions_names:
                                        break
                            if season_csv[r] not in seasons: # Check if region from csv part of the analysis. Else advance
                                while True:
                                    r+=1
                                    if season_csv[r] in seasons:
                                        break
                            if verbose:
                                print(eval_model.name,var.name,region.name,depth,seas,values[r])
                            collect[i,j,k,l,m]=values[r]
                            r+=1
                        m+=1
                    l+=1
                k+=1
            j+=1
        i+=1
    # Ignoring non useful warning:
    # /tmp/ipykernel_19478/363568120.py:37: RuntimeWarning: Mean of empty slice
    #  ensmean=np.nanmean(collect,axis=0)
    with warnings.catch_warnings():
        warnings.simplefilter("ignore", category=RuntimeWarning)
        ensmean=np.nanmean(collect,axis=0)


    print('Placing sums of error into easier to inspect dictionary')

    eval_error_mean = OrderedDict()

    j=0
    for var in obs:
        k=0
        for region in regions:
            l=0
            for depth in var.depths:
                m=0
                for seas in seasons:
                    eval_error_mean[var.name,region.name,depth,seas]=ensmean[j,k,l,m]
                    m+=1
                l+=1
            k+=1
        j+=1

    return eval_error_mean

def write_ranks(error_fraction, models, regions, seasons, out_path, verbose):
    '''
    AUTHORS:
    Jan Streffing		2022-11-31	Split off from main tool

    DESCRIPTION:
    This function calculates CMIP and writes the error fractions to file for later reference.
    
    INPUT:
    error_fraction              Ordered dictionary containing the fraction of errors
    models                      List of models to be evaluated
    regions                     List of regions to be evaluated
    seasons                     List of seasons to be evaluated
    out_path                    Path to folder containing absolute error csv files
    verbose                     Boolean for verbose output

    RETURN:
    cmpi                        List of climate model overall performance indices
                                one per model
    '''
    
    import csv
    from tqdm import tqdm
    import numpy as np
    from collections import OrderedDict

    print('Writing rank of model into csv files and sum up ranks for cmpi score')

    cmpi = OrderedDict()

    for model in tqdm(models):
        sum=0
        iter=0
        with open(out_path+'frac/'+model.name+'_rank.csv', 'w', newline='') as csvfile:
            writer = csv.writer(csvfile, delimiter=' ',quotechar='|', quoting=csv.QUOTE_MINIMAL)
            writer.writerow(['Variable','Region','Level','Season','FracMeanError'])
            for var in model.variables:
                for depth in var.depths:
                    for region in regions:
                        for seas in seasons:
                            writer.writerow([var.name,region.name,depth,seas,np.squeeze(error_fraction[var.name,depth,seas,model.name,region.name])])
                            if np.isnan(np.squeeze(error_fraction[var.name,depth,seas,model.name,region.name])):
                                pass
                            else:
                                sum+=np.squeeze(error_fraction[var.name,depth,seas,model.name,region.name])
                                iter+=1
            cmpi[model.name]=np.squeeze(sum)/iter
            writer.writerow(['CMPI','global','yearly',cmpi[model.name]])
    return cmpi

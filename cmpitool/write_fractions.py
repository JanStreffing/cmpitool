import csv
import logging
import warnings
from collections import OrderedDict
from pathlib import Path

import numpy as np
from tqdm import tqdm

__all__ = ['write_fractions']

logger = logging.getLogger(__name__)


def write_fractions(error_fraction, models, regions, seasons, out_path):
    '''
    AUTHORS:
    Jan Streffing		2022-11-31	Split off from main tool
    Jan Streffing		2026-09-29	Read from the error_fraction DataArray

    DESCRIPTION:
    This function calculates CMIP and writes the error fractions to file for later reference.
    
    INPUT:
    error_fraction              DataArray (model, field, season, region) of error fractions,
                                see calculate_fractions
    models                      List of models to be evaluated
    regions                     List of regions to be evaluated
    seasons                     List of seasons to be evaluated
    out_path                    Path to folder containing absolute error csv files

    RETURN:
    cmpi                        List of climate model overall performance indices
                                one per model
    '''
    

    logger.info('Writing ratio of field mean of errors into csv files and sum up error fractions for cmpi score')

    cmpi = OrderedDict()

    for model in tqdm(models):
        fields = [var.name+'/'+depth for var in model.variables for depth in var.depths]
        # Mean over every variable, level, region and season of this model that has a value
        with warnings.catch_warnings():
            warnings.simplefilter("ignore", category=RuntimeWarning)  # Mean of empty slice
            cmpi[model.name] = float(np.nanmean(error_fraction.sel(model=model.name, field=fields).values))
        with open(Path(out_path) / 'frac' / (model.name+'_fraction.csv'), 'w', newline='') as csvfile:
            writer = csv.writer(csvfile, delimiter=' ',quotechar='|', quoting=csv.QUOTE_MINIMAL)
            writer.writerow(['Variable','Region','Level','Season','FracMeanError'])
            for var in model.variables:
                for depth in var.depths:
                    for region in regions:
                        for seas in seasons:
                            value = float(error_fraction.loc[model.name, var.name+'/'+depth, seas, region.name])
                            writer.writerow([var.name,region.name,depth,seas,value])
            writer.writerow(['CMPI','global','yearly',cmpi[model.name]])
    return cmpi

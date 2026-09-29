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
    Jan Streffing		2026-09-29	CMPI with one weight per variable

    DESCRIPTION:
    This function calculates the CMPI and writes the error fractions to file for later reference.
    The CMPI of a model averages its fractions over the levels, regions and seasons of each
    variable, then over its variables, so that thetao and so with three levels count as
    much as tas. Fractions that are NaN, e.g. ocean variables in land regions, are left out.
    
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
        # One weight per variable: the mean over its levels, regions and seasons,
        # then the mean over the variables of this model that have a value
        with warnings.catch_warnings():
            warnings.simplefilter("ignore", category=RuntimeWarning)  # Mean of empty slice
            per_variable = [np.nanmean(error_fraction.sel(model=model.name,
                                                          field=[var.name+'/'+depth for depth in var.depths]).values)
                            for var in model.variables]
            cmpi[model.name] = float(np.nanmean(per_variable))
        with open(Path(out_path) / 'frac' / (model.name+'_fraction.csv'), 'w', newline='') as csvfile:
            writer = csv.writer(csvfile, delimiter=' ',quotechar='|', quoting=csv.QUOTE_MINIMAL)
            writer.writerow(['Variable','Region','Level','Season','FracMeanError'])
            # One array per model, indexed by position: .loc per value took most of the time
            table = error_fraction.sel(model=model.name).transpose('field', 'season', 'region')
            values = table.values
            field_index = {field: i for i, field in enumerate(table.field.values)}
            season_index = {seas: i for i, seas in enumerate(table.season.values)}
            region_index = {region: i for i, region in enumerate(table.region.values)}
            for var in model.variables:
                for depth in var.depths:
                    for region in regions:
                        for seas in seasons:
                            value = float(values[field_index[var.name+'/'+depth], season_index[seas], region_index[region.name]])
                            writer.writerow([var.name,region.name,depth,seas,value])
            writer.writerow(['CMPI','global','yearly',cmpi[model.name]])
    return cmpi

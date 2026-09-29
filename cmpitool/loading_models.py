import logging
from collections import OrderedDict
from pathlib import Path

import xarray as xr
from tqdm import tqdm

__all__ = ['loading_models']

logger = logging.getLogger(__name__)


def loading_models(models, model_path, seasons, time):
    '''
    Load model data for comparison with observations.
    
    This function loads climate model output data for all specified models, variables,
    depth levels, and seasons. It expects files to follow a specific naming convention
    and returns an ordered dictionary containing all the loaded data.
    
    Parameters
    ----------
    models : list
        List of Model objects to be evaluated
    model_path : str
        Path to directory containing preprocessed model data files
    seasons : list
        List of seasons to be evaluated (e.g. ['DJF', 'MAM', 'JJA', 'SON'])
    time : str
        Time period string in format 'YYYYMM-YYYYMM' (e.g. '198912-201411')
        
    Returns
    -------
    ds_model : OrderedDict
        Ordered dictionary containing loaded model data with keys in the format
        (variable_name, depth, season, model_name)
        
    Notes
    -----
    Expected file naming convention:
    ${variable}_${modelname}_${timeperiod}_${depth}_${season}.nc
    
    Examples
    --------
    >>> from collections import OrderedDict
    >>> from cmpitool import Model, loading_models
    >>> models = [Model('MODEL')]
    >>> seasons = ['DJF', 'JJA']
    >>> ds_model = loading_models(models, '/path/to/data/', seasons, '198912-201411')
    
    AUTHORS:
    Jan Streffing               2022-11-30      Split off from main tool
    '''


    logger.info('Loading model data')

    ds_model = OrderedDict()

    for model in tqdm(models):
        for var in model.variables:
            for depth in var.depths:
                for seas in seasons:
                    path = Path(model_path) / (var.name+'_'+model.name+'_'+time+'_'+depth+'_'+seas+'.nc')
                    logger.debug('loading %s', path)
                    with xr.open_dataset(path) as intermediate:
                        # Keep only the variable itself, not time_bnds, area or other extras
                        intermediate = intermediate[[var.name]].squeeze(drop=True).compute()
                    ds_model[var.name,depth,seas,model.name] = intermediate.drop_vars('depth', errors='ignore')
    return ds_model

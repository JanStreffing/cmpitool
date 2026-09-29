import logging
from collections import OrderedDict
from pathlib import Path

import xarray as xr
from tqdm import tqdm

__all__ = ['loading_obs']

logger = logging.getLogger(__name__)


def loading_obs(obs, obs_path, seasons):
    '''
    Load observational data for comparison with climate models.
    
    This function loads observational datasets that will be used as the reference 
    for evaluating climate model performance. It organizes the data by variable,
    depth/level, and season for direct comparison with model outputs.
    
    Parameters
    ----------
    obs : list
        List of variable objects for which observations will be loaded
    obs_path : str
        Path to directory containing observational data files
    seasons : list
        List of seasons to load (e.g., ['DJF', 'MAM', 'JJA', 'SON'])
        
    Returns
    -------
    ds_obs : OrderedDict
        Dictionary containing loaded observational data, organized by
        variable name, depth, and season
        
    Notes
    -----
    Expected file naming convention:
    ${variable}_${obs_dataset}_${depth}_${season}.nc
    
    If you modify or replace the default observational datasets, you'll need to 
    generate new absolute errors and copy them into eval/$reanalysis/ directory
    for proper comparison.
    
    Examples
    --------
    >>> from cmpitool import VARIABLES, loading_obs
    >>> obs = list(VARIABLES.values())
    >>> ds_obs = loading_obs(obs, 'path/to/obs/', ['DJF', 'JJA'])
    
    AUTHORS:
    Jan Streffing               2022-11-30      Split off from main tool
    '''


    logger.info('Loading obs data')

    ds_obs = OrderedDict()

    for var in tqdm(obs):
        for depth in var.depths:
            for seas in seasons:
                path = Path(obs_path) / (var.name+'_'+var.obs+'_'+depth+'_'+seas+'.nc')
                logger.debug('loading %s', path)
                with xr.open_dataset(path) as intermediate:
                    # Keep only the variable itself, not time_bnds or other extras
                    intermediate = intermediate[[var.name]].compute()
                intermediate = intermediate.drop_vars('depth', errors='ignore')
                # The NCEP2 files carry a size-1 level dimension that the ERA5 files do not
                if 'level' in intermediate.dims:
                    intermediate = intermediate.squeeze('level', drop=True)
                ds_obs[var.name,depth,seas] = intermediate


    return ds_obs

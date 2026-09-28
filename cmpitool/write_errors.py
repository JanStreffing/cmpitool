import csv
import logging
import shutil
from pathlib import Path

from tqdm import tqdm

__all__ = ['write_errors']

logger = logging.getLogger(__name__)


def write_errors(mean_error, models, regions, seasons, out_path, use_for_eval, eval_path):
    '''
    Write calculated error metrics to CSV files for analysis and evaluation.
    
    This function exports the calculated absolute error metrics to CSV files
    for each model. These files can be used for further analysis or as reference
    data for evaluating other models. If use_for_eval is True, files are also
    copied to the evaluation directory for use as reference data.
    
    Parameters
    ----------
    mean_error : xarray.DataArray
        Area-weighted mean absolute error (model, field, season, region), see calculate_errors
    models : list
        List of Model objects being evaluated
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
    >>> write_errors(mean_error, models, regions, seasons, 
    ...              'output/', False, 'eval/ERA5/')
    
    AUTHORS:
    Jan Streffing               2022-11-30      Split off from main tool
    '''
    

    logger.info('Writing field mean of errors into csv files')

    for model in tqdm(models):
        path = Path(out_path) / 'abs' / (model.name+'.csv')
        with open(path, 'w', newline='') as csvfile:
            writer = csv.writer(csvfile, delimiter=' ',quotechar='|', quoting=csv.QUOTE_MINIMAL)
            writer.writerow(['Variable','Region','Level','Season','AbsMeanError'])
            for var in model.variables:
                for region in regions:
                    for depth in var.depths:
                        for seas in seasons:
                            value = float(mean_error.loc[model.name, var.name+'/'+depth, seas, region.name])
                            writer.writerow([var.name,region.name,depth,seas,value])
        if use_for_eval:
            shutil.copyfile(path, Path(eval_path) / (model.name+'.csv'))   

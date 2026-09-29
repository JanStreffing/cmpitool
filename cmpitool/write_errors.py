import csv
import logging
import shutil
from pathlib import Path

from tqdm import tqdm

from .provenance import format_header

__all__ = ['write_errors']

logger = logging.getLogger(__name__)


def write_errors(mean_error, models, regions, seasons, out_path, use_for_eval, eval_path):
    '''
    Write calculated error metrics to CSV files for analysis and evaluation.
    
    This function exports the calculated absolute error metrics to CSV files
    for each model. These files can be used for further analysis or as reference
    data for evaluating other models. If use_for_eval is True, files are also
    copied to eval_path for use as reference data. Each file starts with a
    header naming the cmpitool version, the observations and a hash of each
    region mask, see cmpitool.provenance.
    
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
        Directory the files are copied to if use_for_eval is True; cmpitool()
        passes <out_path>/eval/<reanalysis>/
        
    Returns
    -------
    None
        Files are written to disk at specified locations
        
    Notes
    -----
    After the header, CSV files are organized with columns for:
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
    ...              'output/', False, 'output/eval/ERA5/')
    
    AUTHORS:
    Jan Streffing               2022-11-30      Split off from main tool
    Jan Streffing               2026-09-29      Header with observations and masks
    '''
    

    logger.info('Writing field mean of errors into csv files')

    for model in tqdm(models):
        path = Path(out_path) / 'abs' / (model.name+'.csv')
        with open(path, 'w', newline='') as csvfile:
            for line in format_header(model.variables, regions):
                csvfile.write(line+'\r\n')
            writer = csv.writer(csvfile, delimiter=' ',quotechar='|', quoting=csv.QUOTE_MINIMAL)
            writer.writerow(['Variable','Region','Level','Season','AbsMeanError'])
            # One array per model, indexed by position: .loc per value took most of the time
            table = mean_error.sel(model=model.name).transpose('field', 'season', 'region')
            values = table.values
            field_index = {field: i for i, field in enumerate(table.field.values)}
            season_index = {seas: i for i, seas in enumerate(table.season.values)}
            region_index = {region: i for i, region in enumerate(table.region.values)}
            for var in model.variables:
                for region in regions:
                    for depth in var.depths:
                        for seas in seasons:
                            value = float(values[field_index[var.name+'/'+depth], season_index[seas], region_index[region.name]])
                            writer.writerow([var.name,region.name,depth,seas,value])
        if use_for_eval:
            Path(eval_path).mkdir(parents=True, exist_ok=True)
            shutil.copyfile(path, Path(eval_path) / (model.name+'.csv'))
            logger.info('Copied %s to %s for use as a reference', path.name, eval_path)

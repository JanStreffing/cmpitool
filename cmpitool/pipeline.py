'''
The cmpitool() pipeline: load, compare, normalise, write and plot.
'''

import logging
from pathlib import Path

from .add_masks import add_masks
from .calculate_errors import calculate_errors
from .calculate_fractions import calculate_fractions
from .config_cmip6 import config_cmip6
from .loading_models import loading_models
from .loading_obs import loading_obs
from .plotting_biasmaps import plotting_biasmaps
from .plotting_heatmaps import plotting_heatmaps
from .read_errors import read_errors
from .registry import Model, make_regions, make_variables
from .write_errors import write_errors
from .write_fractions import write_fractions

__all__ = ['cmpitool']


def _configure_logging(verbose):
    '''
    Show cmpitool's progress messages, and with verbose its details too. A handler
    is only added when neither the cmpitool logger nor the root logger has one, so
    logging set up by the caller is left alone.
    '''
    logger = logging.getLogger('cmpitool')
    logger.setLevel(logging.DEBUG if verbose else logging.INFO)
    if not logger.handlers and not logging.getLogger().handlers:
        handler = logging.StreamHandler()
        handler.setFormatter(logging.Formatter('%(message)s'))
        logger.addHandler(handler)


def cmpitool(model_path: str, models: list, eval_models: list = None, out_path: str = 'output/', obs_path: str = 'obs/' , reanalysis: str = 'ERA5', 
             eval_path: str = None, time: str = '198912-201411', seasons: list = ('MAM', 'JJA', 'SON', 'DJF'), 
             maskfixes: bool = True, use_for_eval: bool = False, complexity: str = 'boxes', verbose: bool = False, biasmaps: bool = False, biasmap_limits: dict = None):
    '''
    Main function for Climate Model Performance Index calculation and evaluation.
    
    This function coordinates the entire workflow of the Climate Model Performance Index (CMPI)
    tool, from loading data to calculating performance metrics and generating visualizations.
    It evaluates climate models against observational data and computes normalized performance
    indices following the methodology of Reichler and Kim (2008).
    
    Parameters
    ----------
    model_path : str
        Path to directory containing preprocessed model data files
    models : list
        List of Model objects to be evaluated
    eval_models : list, optional
        List of Model objects used as reference for evaluation.
        If None (default), a set of 30 CMIP6 models will be used.
    out_path : str, optional
        Path to directory where output files will be stored (default: 'output/')
    obs_path : str, optional
        Path to directory containing observational/reanalysis data (default: 'obs/')
    reanalysis : str, optional
        Reanalysis dataset to use ('ERA5' or 'NCEP2') for atmospheric variables 
        (default: 'ERA5')
    eval_path : str, optional
        Path to directory containing pre-computed error values for reference models.
        If None (default), 'eval/{reanalysis}/' will be used.
    time : str, optional
        Time period for analysis in format 'YYYYMM-YYYYMM' (default: '198912-201411')
    seasons : list, optional
        List of seasons to analyze (default: ['MAM', 'JJA', 'SON', 'DJF'])
    maskfixes : bool, optional
        Whether to apply corrections for overlapping ocean basins and continents 
        (default: True)
    use_for_eval : bool, optional
        Whether to save results for future use as reference data (default: False)
    complexity : str, optional
        Which regions to evaluate: 'boxes' (five latitude bands and Nino3.4, default),
        'boxes_all' (plus glob and innertropics), 'regions' (six ocean basins and eight
        continents) or 'all' (all of these). See registry.COMPLEXITIES
    verbose : bool, optional
        Log details of every step, not only the progress (default: False). The
        messages go to the 'cmpitool' logger.
    biasmaps : bool, optional
        Whether to generate bias map plots (default: False)
    biasmap_limits : dict, optional
        Colour ranges for the bias maps by variable name, overriding Variable.default_limit.
        A value of None gives a range of 3 standard deviations of the bias (default: None)
        
    Returns
    -------
    error_fraction : xarray.DataArray
        Performance fractions with dimensions (model, field, season, region). A field
        is a variable at one level, e.g. 'thetao/100m'; the coordinates variable and
        level run along it. Fields a model does not provide are NaN.
    
    Notes
    -----
    The function performs the following steps:
    1. Sets up predefined variables, regions, and model configurations
    2. Loads observational data and model outputs
    3. Calculates absolute errors between models and observations
    4. Computes performance metrics relative to reference models
    5. Generates visualizations of results
    
    Examples
    --------
    >>> from cmpitool import cmpitool, Model
    >>> mymodel = Model('MyModel', ['tas', 'pr'])     # or Model('MyModel', 'all')
    >>> result = cmpitool('model_data/', [mymodel], out_path='results/')
    
    AUTHORS:
    Jan Streffing               2022-12-01      Split off from main tool
    Jan Streffing               2026-09-29      Module renamed from cmpitool.py to pipeline.py
    '''
    _configure_logging(verbose)
    seasons = list(seasons)

    obs_path = Path(obs_path)
    model_path = Path(model_path)
    out_path = Path(out_path)
    eval_path = Path('eval', reanalysis) if eval_path is None else Path(eval_path)

    #Create the output folders
    for subdir in ['abs', 'frac', 'plot', 'plot/maps']:
        (out_path / subdir).mkdir(parents=True, exist_ok=True)

    #Variables with the observations of this reanalysis
    variables = make_variables(reanalysis)
    obs = list(variables.values())

    #The use can define their own set of evaluation models. If they don't we use cmip6 by default.
    if eval_models is None:
        eval_models = config_cmip6()

    #Use this run's variables for every model, whichever reanalysis its variables were made with
    def with_run_variables(model):
        unknown = [var.name for var in model.variables if var.name not in variables]
        if unknown:
            raise ValueError('Unknown variables for model '+model.name+': '+', '.join(unknown))
        return Model(model.name, [variables[var.name] for var in model.variables])
    models = [with_run_variables(model) for model in models]
    eval_models = [with_run_variables(model) for model in eval_models]

    #Regions to evaluate, from one of the preset lists in registry.COMPLEXITIES
    regions = make_regions(complexity)

    #####################################
    # End of user config, start of tool #
    #####################################

    #Function to add masks to the selected regions
    regions = add_masks(regions, maskfixes)
    
    #Loading observational data
    ds_obs = loading_obs(obs, obs_path, seasons)

    #Loading model data
    ds_model = loading_models(models, model_path, seasons, time)
        
    #Area weighted mean absolute error, DataArray (model, field, season, region)
    mean_error = calculate_errors(ds_model, ds_obs, models, regions, obs, seasons)
    
    #Writing errors into csv files that can be:
    # a) read in for further cmip calculation
    # b) placed into eval/ subfolder to read as evaluation data
    write_errors(mean_error, models, regions, seasons, out_path, use_for_eval, eval_path)

    #Reading in previously written absolute errors
    eval_error_mean = read_errors(obs, eval_models, regions, seasons, eval_path)
    
    #Calculate fraction between your model errors and the evaluation model errors
    error_fraction = calculate_fractions(models, regions, obs, seasons, mean_error, eval_error_mean)
    
    cmpi = write_fractions(error_fraction, models, regions, seasons, out_path)
    
    plotting_heatmaps(models, regions, seasons, obs, error_fraction, cmpi, out_path)
    
    if biasmaps:
        plotting_biasmaps(ds_model, ds_obs, models, seasons, obs, out_path, biasmap_limits)

    return error_fraction

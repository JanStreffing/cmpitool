# -*- coding: utf-8 -*-
#
# This file is part of cmpitool
# Original code by Jan Streffing
#

"""Top-level package for cmpitool.

CMPITool (Climate Model Performance Indexing Tool) is a Python framework for
evaluating and comparing climate models against observational data and other
reference models.

The tool divides the mean absolute error of a model against observations by the mean
error of reference models, across multiple variables, regions, and seasons, and averages
these fractions into the CMPI with one weight per variable.

Key Features:
- Evaluation of climate models against observations
- Comparison against reference models (default: 30 CMIP6 models)  
- Analysis of multiple climate variables (temperature, precipitation, winds, etc.)
- Regional and seasonal performance assessment
- Generation of performance heatmaps and bias maps
- Customizable analysis parameters

For more information, see the documentation at: https://cmpitool.readthedocs.io/
"""

__author__ = """Jan Streffing"""
__email__ = "j.streffing1988@gmail.com"
__version__ = "2.0.0"
__credits__ = "Alfred Wegener Institute, Helmholtz Centre for Polar and Marine Research"


from .add_masks import BOXES, add_masks, build_masks
from .calculate_errors import calculate_errors
from .calculate_fractions import calculate_fractions
from .config_cmip6 import config_cmip6
from .loading_models import loading_models
from .loading_obs import loading_obs
from .pipeline import cmpitool
from .plotting_biasmaps import bias_statistics, plotting_biasmaps
from .plotting_heatmaps import plotting_heatmaps
from .read_errors import read_errors
from .registry import (COMPLEXITIES, REGION_DOMAINS, VARIABLES, Model, Region, Variable,
                       make_regions, make_variables)
from .write_errors import write_errors
from .write_fractions import write_fractions

__all__ = [
    'cmpitool',
    'Variable', 'Region', 'Model', 'VARIABLES', 'make_variables',
    'REGION_DOMAINS', 'COMPLEXITIES', 'make_regions', 'config_cmip6',
    'BOXES', 'build_masks', 'add_masks',
    'loading_obs', 'loading_models', 'calculate_errors', 'write_errors', 'read_errors',
    'calculate_fractions', 'write_fractions', 'plotting_heatmaps', 'plotting_biasmaps',
    'bias_statistics',
]

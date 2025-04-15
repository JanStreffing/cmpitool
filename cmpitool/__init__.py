# -*- coding: utf-8 -*-
#
# This file is part of cmpitool
# Original code by Jan Streffing
#

"""Top-level package for cmpitool.

CMPITool (Climate Model Performance Indexing Tool) is a Python framework for
evaluating and comparing climate models against observational data and other
reference models.

The tool calculates performance indices based on the methodology of Reichler and Kim (2008),
comparing model outputs to observational data across multiple variables, regions, and seasons.

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
__version__ = "1.1.2"
__credits__ = "Alfred Wegener Institute, Helmholtz Centre for Polar and Marine Research"


from .cmpitool import *
from .cmpisetup import *
from .config_cmip6 import *
from .add_masks import *
from .loading_obs import *
from .loading_models import *
from .calculate_errors import *
from .write_errors import *
from .read_errors import *
from .calculate_fractions import *
from .write_fractions import *
from .plotting_heatmaps import *
from .plotting_biasmaps import *

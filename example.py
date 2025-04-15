#!/usr/bin/env python
# coding: utf-8

# # Setup

from cmpitool import (cmpitool ,cmpisetup)

variable, region, climate_model, siconc, tas, clt, pr, rlut, uas, vas, ua, zg, zos, tos, mlotst, thetao, so = cmpisetup()
model_path='/work/ab0246/a270092/software/cmpitool/input/'
eval_models=[    
        climate_model(name='BASE',    variables=[siconc, tas, clt, pr, rlut, uas, vas, ua, zg, zos, tos, mlotst, thetao, so]),
    ]
models=[    
        climate_model(name='BASE',variables=[siconc, tas, clt, pr, rlut, uas, vas, ua, zg, zos, tos, mlotst]),
        climate_model(name='RNF+ALB',variables=[siconc, tas, clt, pr, rlut, uas, vas, ua, zg, zos, tos, mlotst]),
        climate_model(name='RNF+ALB+CALV',variables=[siconc, tas, clt, pr, rlut, uas, vas, ua, zg, zos, tos, mlotst]),
        climate_model(name='RNF+ALB+CALV+IMASK',variables=[siconc, tas, clt, pr, rlut, uas, vas, ua, zg, zos, tos, mlotst]),
        climate_model(name='RNF+ALB+PCRIT',variables=[siconc, tas, clt, pr, rlut, uas, vas, ua, zg, zos, tos, mlotst]),
        climate_model(name='RNF+ALB+DEP',variables=[siconc, tas, clt, pr, rlut, uas, vas, ua, zg, zos, tos, mlotst]),
        climate_model(name='RNF+ALB+DEP+PCRIT',variables=[siconc, tas, clt, pr, rlut, uas, vas, ua, zg, zos, tos, mlotst]),
    ]

# Example 1: Using default dynamic bias map limits (calculated from data standard deviation)
#cmpitool(model_path, models, eval_models=eval_models, verbose=True, biasmaps=False)

# Example 2: Using custom fixed bias map limits for specific variables
# Define reasonable fixed limits for each variable
# The CMOR (Climate Model Output Rewriter) standard defines specific variable names and their
# associated long names for climate model outputs. These standardized names ensure consistency
# across different climate models and datasets.

fixed_limits = {
    # CMOR short name: limit value    # Long name (standard unit)
    'siconc': 60.0,     # Sea Ice Area Fraction (percent)
    'tas': 5.0,         # Near-Surface Air Temperature (K)
    'clt': 30.0,        # Total Cloud Area Fraction (percent)
    'pr': 5.0,          # Precipitation Rate (mm/day)
    'rlut': 20.0,       # TOA Outgoing Longwave Radiation (W/m²)
    'uas': 3.0,         # Eastward Near-Surface Wind Speed (m/s)
    'vas': 3.0,         # Northward Near-Surface Wind Speed (m/s)
    'ua': 5.0,          # Eastward Wind Component (m/s)
    'zg': 100.0,        # Geopotential Height (m)
    'zos': 0.3,         # Sea Surface Height Above Geoid (m)
    'tos': 3.0,         # Sea Surface Temperature (K)
    'mlotst': 100.0,    # Ocean Mixed Layer Thickness Defined by Sigma T (m)
    'thetao': 3.0,      # Sea Water Potential Temperature (K)
    'so': 1.0           # Sea Water Practical Salinity (psu)
}

cmpitool(model_path, models, verbose=True, biasmaps=True, biasmap_limits=fixed_limits, out_path='output_fixed_limits/')


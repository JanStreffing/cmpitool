#!/usr/bin/env python
# coding: utf-8

# # Setup

from cmpitool import (cmpitool ,cmpisetup)

variable, region, climate_model, siconc, tas, clt, pr, rlut, uas, vas, ua, zg, zos, mlotst, thetao, so = cmpisetup()
model_path='/work/ab0246/a270092/software/cmpitool/input/'
eval_models=[    
        climate_model(name='REF_V340',variables=[siconc, tas, clt, pr, rlut, uas, vas, ua, zg, zos, mlotst, thetao, so]),
    ]
models=[    
        climate_model(name='TUNE10_GGAUSS',variables=[siconc, tas, clt, pr, rlut, uas, vas, ua, zg, zos, mlotst, thetao, so]),
        climate_model(name='TUNE11_RVICE',variables=[siconc, tas, clt, pr, rlut, uas, vas, ua, zg, zos, mlotst, thetao, so]),
        climate_model(name='TUNE12_ENTSTPC',variables=[siconc, tas, clt, pr, rlut, uas, vas, ua, zg, zos, mlotst, thetao, so]),
    ]

# Example 1: Using default dynamic bias map limits (calculated from data standard deviation)
#cmpitool(model_path, models, eval_models=eval_models, verbose=True, biasmaps=False)

# Example 2: Using custom fixed bias map limits for specific variables
# Define reasonable fixed limits for each variable
fixed_limits = {
    'siconc': 60.0,     # Sea ice concentration (percent)
    'tas': 5.0,         # Surface air temperature (K)
    'clt': 30.0,        # Cloud fraction (percent)
    'pr': 5.0,          # Precipitation (mm/day)
    'rlut': 20.0,       # Outgoing longwave radiation (W/m²)
    'uas': 3.0,         # Eastward near-surface wind (m/s)
    'vas': 3.0,         # Northward near-surface wind (m/s)
    'ua': 5.0,          # Eastward wind (m/s)
    'zg': 100.0,        # Geopotential height (m)
    'zos': 0.3,         # Sea surface height (m)

    'mlotst': 100.0,    # Ocean mixed layer thickness (m)
    'thetao': 3.0,      # Sea water potential temperature (K)
    'so': 1.0           # Sea water salinity (psu)
}

#cmpitool(model_path, models, eval_models=eval_models, verbose=True, biasmaps=True, biasmap_limits=fixed_limits,use_for_eval=True)
#cmpitool(model_path, models, eval_models=eval_models, verbose=True, biasmaps=False, biasmap_limits=fixed_limits,use_for_eval=True)
cmpitool(model_path, models, verbose=True, biasmaps=True, biasmap_limits=fixed_limits,use_for_eval=True)
#cmpitool(model_path, models, verbose=False, biasmaps=False, biasmap_limits=fixed_limits,use_for_eval=True)


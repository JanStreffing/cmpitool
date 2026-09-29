#!/usr/bin/env python
# coding: utf-8

# # Setup

from cmpitool import cmpitool, Model

model_path='/work/ab0246/a270092/software/cmpitool/input/'
eval_models=[
        Model('REF_V340', 'all'),
    ]
models=[
        Model('TUNE10_GGAUSS', 'all'),
        Model('TUNE11_RVICE', 'all'),
        Model('TUNE12_ENTSTPC', 'all'),
    ]

# Bias maps use each variable's default colour range, Variable.default_limit in
# cmpitool/registry.py (for example 5 K for tas, 5 mm/day for pr). To override
# some of them, pass biasmap_limits. None gives 3 standard deviations of the bias.
own_limits = {
    'tas': 3.0,         # Near-Surface Air Temperature (K)
    'pr': None,         # Precipitation (kg m-2 s-1): 3 standard deviations
}

#cmpitool(model_path, models, eval_models=eval_models, verbose=True, biasmaps=False)
#cmpitool(model_path, models, eval_models=eval_models, verbose=True, biasmaps=True, biasmap_limits=own_limits, use_for_eval=True)
cmpitool(model_path, models, verbose=True, biasmaps=True, use_for_eval=True)

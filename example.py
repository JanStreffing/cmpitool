#!/usr/bin/env python
# coding: utf-8

# # Setup

from cmpitool import (cmpitool ,cmpisetup)

variable, region, climate_model, siconc, tas, clt, pr, rlut, uas, vas, ua, zg, zos, tos, mlotst, thetao, so = cmpisetup()
model_path='/p/project/chhb19/streffing1/software/cmpi-tool/input/'
models=[    
        climate_model(name='EC-Earth3',    variables=[siconc, tas, clt, pr, rlut, uas, vas, ua, zg, zos, tos, mlotst, thetao, so]),
        climate_model(name='AWI-CM1-MR',   variables=[        tas, clt, pr, rlut, uas, vas, ua, zg, zos, tos, mlotst, thetao, so]),
    ]

cmpitool(model_path, models)


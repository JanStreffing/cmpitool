#!/usr/bin/env python
# coding: utf-8

# # Setup

from cmpitool import (cmpitool ,cmpisetup)
reanalysis='ERA5'

variable, region, climate_model, siconc, tas, clt, pr, rlut, uas, vas, ua, zg, zos, tos, mlotst, thetao, so = cmpisetup(reanalysis=reanalysis)
model_path='/work/ab0246/a270092/software/cmpi-tool/input/'
models=[    
        climate_model(name='TAG-2.5',   variables=[siconc, tas, clt, pr, rlut, uas, vas, ua, zg, zos, tos, mlotst]),
        climate_model(name='FW-Fix-WIP-2.5.1',   variables=[siconc, tas, clt, pr, rlut, uas, vas, ua, zg, zos, tos, mlotst]),
    ]

cmpitool(model_path, models, verbose=True, complexity='boxes', reanalysis=reanalysis)


#!/usr/bin/env python
# coding: utf-8

# # Setup

from cmpitool import (cmpitool ,cmpisetup)
reanalysis='NCEP2'

variable, region, climate_model, siconc, tas, clt, pr, rlut, uas, vas, ua, zg, zos, tos, mlotst, thetao, so = cmpisetup(reanalysis=reanalysis)
model_path='/work/ab0246/a270092/postprocessing/cmip6_cmpitool/'
eval_models=[    
        climate_model(name='ACCESS-CM2',   variables=[siconc, tas, clt, pr, rlut, uas, vas, ua, zg, zos, tos, mlotst, thetao, so]),
        climate_model(name='AWI-CM-1-1-MR',variables=[        tas, clt, pr, rlut, uas, vas, ua, zg, zos, tos, mlotst, thetao, so]),
        climate_model(name='BCC-SM2-MR',   variables=[siconc, tas, clt, pr, rlut, uas, vas, ua, zg, zos, tos, mlotst, thetao, so]),
        climate_model(name='CAMS-CSM1-0',  variables=[siconc, tas, clt, pr, rlut, uas, vas, ua, zg, zos, tos, mlotst, thetao, so]),
        climate_model(name='CanESM5',      variables=[siconc, tas, clt, pr, rlut, uas, vas, ua, zg, zos, tos, mlotst, thetao, so]),
        climate_model(name='CAS-ESM2-0',   variables=[siconc, tas, clt, pr, rlut, uas, vas, ua, zg, zos, tos, mlotst, thetao, so]),
        climate_model(name='CESM2',        variables=[siconc, tas, clt, pr, rlut,           ua, zg, zos, tos, mlotst, thetao, so]),
        climate_model(name='CIESM',        variables=[        tas, clt, pr, rlut,           ua, zg, zos, tos,         thetao, so]),
        climate_model(name='CMCC-CM2-SR5', variables=[siconc, tas, clt, pr, rlut, uas, vas, ua, zg, zos, tos, mlotst, thetao, so]),
        climate_model(name='CNRM-CM6-1-HR',variables=[siconc, tas, clt, pr, rlut, uas, vas, ua, zg, zos, tos, mlotst, thetao, so]),
        climate_model(name='E3SM-1-1',     variables=[siconc, tas, clt, pr, rlut,           ua, zg, zos, tos, mlotst, thetao, so]),
        climate_model(name='EC-Earth3',    variables=[siconc, tas, clt, pr, rlut, uas, vas, ua, zg, zos, tos, mlotst, thetao, so]),
        climate_model(name='FGOALS-f3-L',  variables=[siconc, tas, clt, pr, rlut, uas, vas, ua, zg, zos, tos, mlotst, thetao, so]),
        climate_model(name='FIO-ESM-2-0',  variables=[siconc, tas, clt, pr, rlut,           ua, zg, zos, tos,         thetao, so]),
        climate_model(name='GISS-E2-1-G',  variables=[        tas, clt, pr, rlut, uas, vas, ua, zg, zos, tos, mlotst, thetao, so]),
        climate_model(name='GFDL-CM4',     variables=[siconc, tas, clt, pr, rlut, uas, vas, ua, zg, zos, tos,         thetao, so]),
        climate_model(name='HadGEM3MM',    variables=[siconc, tas, clt, pr, rlut, uas, vas, ua, zg, zos, tos, mlotst, thetao, so]),
        climate_model(name='ICON-ESM-LR',  variables=[siconc, tas, clt, pr, rlut, uas, vas, ua, zg, zos, tos, mlotst, thetao, so]),
        climate_model(name='IITM-ESM',     variables=[        tas, clt, pr, rlut, uas, vas, ua, zg,                             ]),
        climate_model(name='INM-CM5-0',    variables=[siconc, tas, clt, pr, rlut, uas, vas, ua, zg,                   thetao, so]),
        climate_model(name='IPSL-CM6A-LR', variables=[siconc, tas, clt, pr, rlut, uas, vas, ua, zg, zos, tos, mlotst, thetao, so]),
        climate_model(name='KIOST-ESM',    variables=[siconc, tas, clt,     rlut, uas, vas, ua, zg, zos, tos, mlotst,           ]),
        climate_model(name='MCM-UA-1-0',   variables=[        tas,        pr, rlut, uas, vas, ua, zg,    tos,         thetao, so]),
        climate_model(name='MIROC6',       variables=[siconc, tas, clt, pr, rlut, uas, vas, ua, zg, zos, tos,                   ]),
        climate_model(name='MPI-ESM1-2-HR',variables=[siconc, tas, clt, pr, rlut, uas, vas, ua, zg, zos, tos, mlotst, thetao, so]),
        climate_model(name='MRI-ESM2-0',   variables=[siconc, tas, clt, pr, rlut, uas, vas,         zos, tos, mlotst, thetao, so]),
        climate_model(name='NESM3',        variables=[siconc, tas, clt, pr, rlut, uas, vas, ua, zg, zos, tos, mlotst, thetao, so]),
        climate_model(name='NorESM2-MM',   variables=[siconc, tas, clt, pr, rlut,           ua, zg, zos, tos, mlotst, thetao, so]),
        climate_model(name='SAM0-UNICON',  variables=[siconc, tas, clt, pr, rlut,           ua, zg, zos, tos,         thetao, so]),
        climate_model(name='TaiESM1',      variables=[siconc, tas, clt, pr, rlut,           ua, zg, zos, tos,         thetao, so]),
    ]
models=[    
        climate_model(name='ACCESS-CM2',   variables=[siconc, tas, clt, pr, rlut, uas, vas, ua, zg, zos, tos, mlotst, thetao, so]),
        climate_model(name='AWI-CM-1-1-MR',variables=[        tas, clt, pr, rlut, uas, vas, ua, zg, zos, tos, mlotst, thetao, so]),
        climate_model(name='BCC-SM2-MR',   variables=[siconc, tas, clt, pr, rlut, uas, vas, ua, zg, zos, tos, mlotst, thetao, so]),
        climate_model(name='CAMS-CSM1-0',  variables=[siconc, tas, clt, pr, rlut, uas, vas, ua, zg, zos, tos, mlotst, thetao, so]),
        climate_model(name='CanESM5',      variables=[siconc, tas, clt, pr, rlut, uas, vas, ua, zg, zos, tos, mlotst, thetao, so]),
        climate_model(name='CAS-ESM2-0',   variables=[siconc, tas, clt, pr, rlut, uas, vas, ua, zg, zos, tos, mlotst, thetao, so]),
        climate_model(name='CESM2',        variables=[siconc, tas, clt, pr, rlut,           ua, zg, zos, tos, mlotst, thetao, so]),
        climate_model(name='CIESM',        variables=[        tas, clt, pr, rlut,           ua, zg, zos, tos,         thetao, so]),
        climate_model(name='CMCC-CM2-SR5', variables=[siconc, tas, clt, pr, rlut, uas, vas, ua, zg, zos, tos, mlotst, thetao, so]),
        climate_model(name='CNRM-CM6-1-HR',variables=[siconc, tas, clt, pr, rlut, uas, vas, ua, zg, zos, tos, mlotst, thetao, so]),
        climate_model(name='E3SM-1-1',     variables=[siconc, tas, clt, pr, rlut,           ua, zg, zos, tos, mlotst, thetao, so]),
        climate_model(name='EC-Earth3',    variables=[siconc, tas, clt, pr, rlut, uas, vas, ua, zg, zos, tos, mlotst, thetao, so]),
        climate_model(name='FGOALS-f3-L',  variables=[siconc, tas, clt, pr, rlut, uas, vas, ua, zg, zos, tos, mlotst, thetao, so]),
        climate_model(name='FIO-ESM-2-0',  variables=[siconc, tas, clt, pr, rlut,           ua, zg, zos, tos,         thetao, so]),
        climate_model(name='GISS-E2-1-G',  variables=[        tas, clt, pr, rlut, uas, vas, ua, zg, zos, tos, mlotst, thetao, so]),
        climate_model(name='GFDL-CM4',     variables=[siconc, tas, clt, pr, rlut, uas, vas, ua, zg, zos, tos,         thetao, so]),
        climate_model(name='HadGEM3MM',    variables=[siconc, tas, clt, pr, rlut, uas, vas, ua, zg, zos, tos, mlotst, thetao, so]),
        climate_model(name='ICON-ESM-LR',  variables=[siconc, tas, clt, pr, rlut, uas, vas, ua, zg, zos, tos, mlotst, thetao, so]),
        climate_model(name='IITM-ESM',     variables=[        tas, clt, pr, rlut, uas, vas, ua, zg,                             ]),
        climate_model(name='INM-CM5-0',    variables=[siconc, tas, clt, pr, rlut, uas, vas, ua, zg,                   thetao, so]),
        climate_model(name='IPSL-CM6A-LR', variables=[siconc, tas, clt, pr, rlut, uas, vas, ua, zg, zos, tos, mlotst, thetao, so]),
        climate_model(name='KIOST-ESM',    variables=[siconc, tas, clt,     rlut, uas, vas, ua, zg, zos, tos, mlotst,           ]),
        climate_model(name='MCM-UA-1-0',   variables=[        tas,        pr, rlut, uas, vas, ua, zg,    tos,         thetao, so]),
        climate_model(name='MIROC6',       variables=[siconc, tas, clt, pr, rlut, uas, vas, ua, zg, zos, tos,                   ]),
        climate_model(name='MPI-ESM1-2-HR',variables=[siconc, tas, clt, pr, rlut, uas, vas, ua, zg, zos, tos, mlotst, thetao, so]),
        climate_model(name='MRI-ESM2-0',   variables=[siconc, tas, clt, pr, rlut, uas, vas,         zos, tos, mlotst, thetao, so]),
        climate_model(name='NESM3',        variables=[siconc, tas, clt, pr, rlut, uas, vas, ua, zg, zos, tos, mlotst, thetao, so]),
        climate_model(name='NorESM2-MM',   variables=[siconc, tas, clt, pr, rlut,           ua, zg, zos, tos, mlotst, thetao, so]),
        climate_model(name='SAM0-UNICON',  variables=[siconc, tas, clt, pr, rlut,           ua, zg, zos, tos,         thetao, so]),
        climate_model(name='TaiESM1',      variables=[siconc, tas, clt, pr, rlut,           ua, zg, zos, tos,         thetao, so]),
    ]

cmpitool(model_path, models, eval_models, complexity='all', use_for_eval=True, reanalysis=reanalysis)


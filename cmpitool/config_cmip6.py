def config_cmip6(climate_model, obs):
    '''
    AUTHORS:
    Jan Streffing		2022-11-30	Split off from main tool

    DESCRIPTION:
    This function defines a default set of climate models that are contained 
    in CMIP6 and are used as the default set against which CMIP-Tool evaluates
    your model. It furthermore contains the information which variables are 
    available for each model.
    Note: If you modify / overwrite this default, you need to generate new absolute
    errors and copy them into eval/$reanalysis/
    
    INPUT:
    climate_model		Class that creates climate model objects
    obs                         Sorted list of observation variable objects
    RETURN:
    cmip6_models		List of climate model objects
    '''
    siconc = obs[0]
    tas = obs[1]
    clt = obs[2]
    pr = obs[3]
    rlut = obs[4]
    uas = obs[5]
    vas = obs[6]
    ua = obs[7]
    zg = obs[8]
    zos = obs[9]
    tos = obs[10]
    mlotst = obs[11]
    thetao = obs[12]
    so = obs[13]
    cmip6_models = [
        climate_model(name='ACCESS-CM2',   variables=[siconc, tas, clt, pr, rlut, uas, vas, ua, zg, zos, tos, mlotst, thetao, so]),
        climate_model(name='AWI-CM-1-1-MR',variables=[        tas, clt, pr, rlut, uas, vas, ua, zg, zos, tos, mlotst, thetao, so]),
        climate_model(name='BCC-SM2-MR',   variables=[siconc, tas, clt, pr, rlut, uas, vas, ua, zg, zos, tos, mlotst, thetao, so]),
        climate_model(name='CAMS-CSM1-0',  variables=[siconc, tas, clt, pr, rlut, uas, vas, ua, zg, zos, tos, mlotst, thetao, so]),
        climate_model(name='CanESM5',      variables=[siconc, tas, clt, pr, rlut, uas, vas, ua, zg, zos, tos, mlotst, thetao, so]),
        climate_model(name='CAS-ESM2-0',   variables=[siconc, tas, clt, pr, rlut, uas, vas, ua, zg, zos, tos,                   ]),
        climate_model(name='CESM2',        variables=[siconc, tas, clt, pr, rlut,           ua, zg, zos, tos, mlotst, thetao, so]),
        climate_model(name='CIESM',        variables=[        tas, clt, pr, rlut,           ua, zg, zos, tos,         thetao, so]),
        climate_model(name='CMCC-CM2-SR5', variables=[siconc, tas, clt, pr, rlut, uas, vas, ua, zg, zos, tos, mlotst, thetao, so]),
        climate_model(name='CNRM-CM6-1-HR',variables=[siconc, tas, clt, pr, rlut, uas, vas, ua, zg, zos, tos, mlotst, thetao, so]),
        climate_model(name='E3SM-1-1',     variables=[siconc, tas, clt, pr, rlut,           ua, zg, zos, tos, mlotst, thetao, so]),
        climate_model(name='EC-Earth3',    variables=[siconc, tas, clt, pr, rlut, uas, vas, ua, zg, zos, tos, mlotst, thetao, so]),
        climate_model(name='FGOALS-f3-L',  variables=[siconc, tas, clt, pr, rlut, uas, vas, ua, zg, zos, tos, mlotst, thetao, so]),
        climate_model(name='FIO-ESM-2-0',  variables=[siconc, tas, clt, pr, rlut,           ua, zg, zos, tos,         thetao, so]),
        climate_model(name='GISS-E2-1-G',  variables=[siconc, tas, clt, pr, rlut, uas, vas, ua, zg, zos, tos, mlotst, thetao, so]),
        climate_model(name='GFDL-CM4',     variables=[siconc, tas, clt, pr, rlut, uas, vas, ua, zg, zos, tos,         thetao, so]),
        climate_model(name='HadGEM3MM',    variables=[siconc, tas, clt, pr, rlut, uas, vas, ua, zg, zos, tos, mlotst, thetao, so]),
        climate_model(name='ICON-ESM-LR',  variables=[siconc, tas, clt, pr, rlut, uas, vas, ua, zg, zos, tos, mlotst, thetao, so]),
        climate_model(name='IITM-ESM',     variables=[        tas, clt, pr, rlut, uas, vas, ua, zg,      tos,                   ]),
        climate_model(name='INM-CM5-0',    variables=[siconc, tas, clt, pr, rlut, uas, vas, ua, zg,                   thetao, so]),
        climate_model(name='IPSL-CM6A-LR', variables=[siconc, tas, clt, pr, rlut, uas, vas, ua, zg, zos, tos, mlotst, thetao, so]),
        climate_model(name='KIOST-ESM',    variables=[siconc, tas, clt,     rlut, uas, vas, ua, zg, zos, tos, mlotst,           ]),
        climate_model(name='MCMUA1',       variables=[        tas,        pr, rlut, uas, vas, ua, zg,    tos,         thetao, so]),
        climate_model(name='MIROC6',       variables=[siconc, tas, clt, pr, rlut, uas, vas, ua, zg, zos, tos,                   ]),
        climate_model(name='MPI-ESM1-2-HR',variables=[siconc, tas, clt, pr, rlut, uas, vas, ua, zg, zos, tos, mlotst, thetao, so]),
        climate_model(name='MRI-ESM2-0',   variables=[siconc, tas, clt, pr, rlut, uas, vas,         zos, tos, mlotst, thetao, so]),
        climate_model(name='NESM3',        variables=[siconc, tas, clt, pr, rlut, uas, vas, ua, zg, zos, tos, mlotst, thetao, so]),        climate_model(name='NorESM2-MM',   variables=[siconc, tas, clt, pr, rlut,           ua, zg, zos, tos, mlotst, thetao, so]),
        climate_model(name='SAM0-UNICON',  variables=[siconc, tas, clt, pr, rlut,           ua, zg, zos, tos,         thetao, so]),
        climate_model(name='TaiESM1',      variables=[siconc, tas, clt, pr, rlut,           ua, zg, zos, tos,         thetao, so]),
    ]

    return cmip6_models

from .registry import VARIABLES, Model

__all__ = ['config_cmip6']


def config_cmip6():
    '''
    AUTHORS:
    Jan Streffing		2022-11-30	Split off from main tool
    Jan Streffing		2026-09-29	Models listed by the variables they lack

    DESCRIPTION:
    This function defines a default set of climate models that are contained
    in CMIP6 and are used as the default set against which CMIP-Tool evaluates
    your model. It furthermore contains the information which variables are
    available for each model.
    Note: If you modify / overwrite this default, you need to generate new absolute
    errors and copy them into eval/$reanalysis/

    RETURN:
    cmip6_models		List of Model objects
    '''
    def all_but(*missing):
        return [name for name in VARIABLES if name not in missing]

    return [
        Model('ACCESS-CM2',    'all'),
        Model('AWI-CM-1-1-MR', all_but('siconc')),
        Model('BCC-SM2-MR',    'all'),
        Model('CAMS-CSM1-0',   'all'),
        Model('CanESM5',       'all'),
        Model('CAS-ESM2-0',    'all'),
        Model('CESM2',         all_but('uas', 'vas')),
        Model('CIESM',         all_but('siconc', 'uas', 'vas', 'mlotst')),
        Model('CMCC-CM2-SR5',  'all'),
        Model('CNRM-CM6-1-HR', 'all'),
        Model('E3SM-1-1',      all_but('uas', 'vas')),
        Model('EC-Earth3',     'all'),
        Model('FGOALS-f3-L',   'all'),
        Model('FIO-ESM-2-0',   all_but('uas', 'vas', 'mlotst')),
        Model('GISS-E2-1-G',   all_but('siconc')),
        Model('GFDL-CM4',      all_but('mlotst')),
        Model('HadGEM3MM',     'all'),
        Model('ICON-ESM-LR',   'all'),
        Model('IITM-ESM',      all_but('siconc', 'zos', 'mlotst', 'thetao', 'so')),
        Model('INM-CM5-0',     all_but('zos', 'mlotst')),
        Model('IPSL-CM6A-LR',  'all'),
        Model('KIOST-ESM',     all_but('pr', 'thetao', 'so')),
        Model('MCM-UA-1-0',    all_but('siconc', 'clt', 'zos', 'mlotst')),
        Model('MIROC6',        all_but('mlotst', 'thetao', 'so')),
        Model('MPI-ESM1-2-HR', 'all'),
        Model('MRI-ESM2-0',    all_but('ua', 'zg')),
        Model('NESM3',         'all'),
        Model('NorESM2-MM',    all_but('uas', 'vas')),
        Model('SAM0-UNICON',   all_but('uas', 'vas', 'mlotst')),
        Model('TaiESM1',       all_but('uas', 'vas', 'mlotst')),
    ]

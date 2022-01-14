#!/usr/bin/env python3
# -*- coding: utf-8 -*-
'''
The climate model performance indicies (cmip) tool provides normalized 
performance indicies evaluates your climate models performance against
reanalysis and obstervational data. It will also normalize your performance
to allow for comparison with the top 10 performing CMIP6 models

@author: Jan Streffing (jan.streffing@awi.de), January 2022
'''
#Imports
import xarray as xr
import numpy as np
from collections import OrderedDict
import csv
import matplotlib.pyplot as plt
from cartopy import config
import cartopy.crs as ccrs

# Returns equvalent to cdo fldmean
def fldmean(ds):
    weights = np.cos(np.deg2rad(ds.lat))
    weights.name = "weights"
    ds_weighted = ds.weighted(weights)
    return ds.mean(("lon", "lat"))


if __name__ == '__main__':

    # Settings
    obs_path='obs/'
    model_path='input/'
    out_path='output/'
    '''
    variables = {
        'siconc':'OSISAF',
        'tas':'ERA5',
        'clt':'MODIS',
        'pr':'GPCP',
        'rlut':'CERES',
        'uas':'ERA5',
        'vas':'ERA5',
        'ua':'ERA5',
        'zg':'ERA5'}
    '''
    variables = {
        'tas':'ERA5'}
    seasons = ['MAM', 'JJA', 'SON', 'DJF']
    models = ['ECE','BCC']
    time = '198912-201411'

    #Loading obs data
    ds_obs = OrderedDict()
    for var in variables:
        for seas in seasons:
            intermediate = xr.open_dataset(obs_path+var+'_'+variables[var]+'_'+seas+'.nc')
            ds_obs[var,seas] = intermediate.compute()

    #Loading model data
    ds_model = OrderedDict()
    for model in models:
        for var in variables:
            for seas in seasons:
                intermediate = xr.open_dataset(model_path+var+'_'+model+'_'+time+'_'+seas+'.nc')
                ds_model[var,seas,model] = intermediate.compute()

    #Define regions
    regions={'glob' : {
        'lat_min':-90,
        'lat_max':90,
        'lon_min':0,
        'lon_max':360},
             
        'tropics' : {
        'lat_min':-30,
        'lat_max':30,
        'lon_min':0,
        'lon_max':360},
             
        'innertropics' : {
        'lat_min':-15,
        'lat_max':15,
        'lon_min':0,
        'lon_max':360},
             
        'antarctic' : {
        'lat_min':-90,
        'lat_max':-60,
        'lon_min':0,
        'lon_max':360},
             
        'arctic' : {
        'lat_min':60,
        'lat_max':90,
        'lon_min':0,
        'lon_max':360},
             
        'southmid' : {
        'lat_min':-90,
        'lat_max':-60,
        'lon_min':0,
        'lon_max':360},
             
        'northmid' : {
        'lat_min':30,
        'lat_max':60,
        'lon_min':0,
        'lon_max':360}}

    #Calculate absolute error and build field mean of abs error
    abs_error = OrderedDict()
    mean_error = OrderedDict()
    for var in variables:
        for region in regions:
            if var == 'siconc' and (region != 'arctic' and region != 'antarctic'):
                continue
            filter1 = ds_model[var,seas,model].drop('time').lat>regions[region]['lat_min']
            filter2 = ds_model[var,seas,model].drop('time').lat<regions[region]['lat_max']
            for model in models:
                for seas in seasons:
                    abs_error[var,seas,model,region]=np.sqrt((ds_model[var,seas,model].drop('time').where(filter1 & filter2)-
                                                       ds_obs[var,seas].drop('time')).where(filter1 & filter2)*
                                                      (ds_model[var,seas,model].drop('time').where(filter1 & filter2)-
                                                       ds_obs[var,seas].drop('time').where(filter1 & filter2)))
                    mean_error[var,seas,model,region] = fldmean(abs_error[var,seas,model,region])

    #Write field mean of errors into csv files
    for model in models:
        with open(out_path+model+'.csv', 'w', newline='') as csvfile:
            writer = csv.writer(csvfile, delimiter=' ',quotechar='|', quoting=csv.QUOTE_MINIMAL)
            for region in regions:
                for var in variables:
                    for seas in seasons:
                        writer.writerow([var,seas,region,str(mean_error[var,seas,model,region].tas.values[0])])



#!/usr/bin/env python
# coding: utf-8

# # Setup

# In[1]:


import copy
import xarray as xr
import numpy as np
import pandas as pd
from collections import OrderedDict
import csv
import matplotlib.pyplot as plt
import matplotlib.patches as mpatches
from matplotlib import colors as mplc
import seaborn as sns
from cartopy import config
import cartopy.crs as ccrs
import cartopy.feature as cfeature
import warnings
from tqdm import tqdm
import geopandas as gp
import pooch
import regionmask


# # Configuration

# In[22]:


#Verbose output?
verbose='true'

#Fixes masks on default ocean basin and continents masks. If you load your own, this should be turned off.
maskfixes='true'

#Choose ERA5 or NCEP2. This switch also selects the eval/???? subfolders, so do not mix and match as this 
#would lead to incorrect results.
reanalysis='ERA5'

#Define paths
obs_path='obs/'
model_path='/p/project/chhb19/streffing1/software/cmpi-tool/input/'
out_path='output/'
eval_path='eval/'+reanalysis+'/'
time = '198912-201411'

# Setup variables (turn off variables for analysis by instancing with optional argument active=False)
class variable:
    def __init__ (self, name, obs, depths, domain='mixed', active=True):
        self.name = name
        self.obs = obs
        self.depths = depths
        self.domain = domain
        self.active = active

siconc = variable(name='siconc',obs='OSISAF', depths=['surface'], domain='oce')
pr = variable(name='pr', obs='GPCP', depths=['surface'])
tas = variable(name='tas', obs=reanalysis, depths=['surface'])
clt = variable(name='clt', obs='MODIS', depths=['surface'])
rlut = variable(name='rlut', obs='CERES', depths=['surface'])
uas = variable(name='uas', obs=reanalysis, depths=['surface'])
vas = variable(name='vas', obs=reanalysis, depths=['surface'])
ua = variable(name='ua', obs=reanalysis, depths=['300hPa'])
zg = variable(name='zg', obs=reanalysis, depths=['500hPa'])
zos = variable(name='zos', obs='NESDIS', depths=['surface'], domain='oce')
tos = variable(name='tos', obs='HadISST2', depths=['surface'], domain='oce')
mlotst = variable(name='mlotst', obs='C-GLORSv7', depths=['surface'], domain='oce')
thetao = variable(name='thetao', obs='EN4', depths=['10m','100m','1000m'], domain='oce')
so = variable(name='so', obs='EN4', depths=['10m','100m','1000m'], domain='oce')

obs = [siconc, tas, clt, pr, rlut, uas, vas, ua, zg, zos, tos, mlotst, thetao, so]

'''
If don't add all variables to obs for your analysis, the missing ones will be skipped.
However the variables are still present in the pre-generated .csv files. 
We still need to loop over the skipped variables to access the right lines. 
Thus we set number_of_implemented_variables manually, currently to 14.
- If you add more variables and generate new .csv files, increase the number 14 accordingly!
- If you just skip a variable for your analysis, don't change number_of_implemented_variables!
'''
number_of_implemented_variables = 14 


# Some models don't have all variables available. Thus set give each model a name and a variable dictionary
class climate_model:
    def __init__ (self, name, variables):
        self.name = name
        self.variables = variables
        
cmip6 = [
    climate_model(name='ACCESS-CM2',   variables=[siconc, tas, clt, pr, rlut, uas, vas, ua, zg, zos, tos, mlotst, thetao, so]),
    climate_model(name='AWI-CM1-MR',   variables=[        tas, clt, pr, rlut, uas, vas, ua, zg, zos, tos, mlotst, thetao, so]),
    climate_model(name='BCC-SM2-MR',   variables=[siconc, tas, clt, pr, rlut, uas, vas, ua, zg, zos, tos, mlotst, thetao, so]),
    climate_model(name='CAMS',         variables=[siconc, tas, clt, pr, rlut, uas, vas, ua, zg, zos, tos, mlotst, thetao, so]),
    climate_model(name='CanESM5',      variables=[siconc, tas, clt, pr, rlut, uas, vas, ua, zg, zos, tos, mlotst, thetao, so]),
    climate_model(name='CAS-ESM2-0',   variables=[siconc, tas, clt, pr, rlut, uas, vas, ua, zg, zos, tos,                   ]),
    climate_model(name='CESM2',        variables=[siconc, tas, clt, pr, rlut,           ua, zg, zos, tos, mlotst            ]),
    climate_model(name='CIESM',        variables=[        tas, clt, pr, rlut,           ua, zg, zos, tos,         thetao, so]),
    climate_model(name='CMCC-CM2-SR5', variables=[siconc, tas, clt, pr, rlut, uas, vas, ua, zg, zos, tos, mlotst, thetao, so]),
    climate_model(name='CNRM-CM6-1-HR',variables=[siconc, tas, clt, pr, rlut, uas, vas, ua, zg, zos, tos, mlotst            ]),
    climate_model(name='E3SM-1-1',     variables=[siconc, tas, clt, pr, rlut,           ua, zg, zos, tos, mlotst, thetao, so]),
    climate_model(name='EC-Earth3',    variables=[siconc, tas, clt, pr, rlut, uas, vas, ua, zg, zos, tos, mlotst, thetao, so]),
    climate_model(name='FGOALS-f3-L',  variables=[siconc, tas, clt, pr, rlut, uas, vas, ua, zg, zos, tos, mlotst, thetao, so]),
    climate_model(name='FIO-ESM-2-0',  variables=[siconc, tas, clt, pr, rlut,           ua, zg, zos, tos,         thetao, so]),
    climate_model(name='GISS-E2-1-G',  variables=[siconc, tas, clt, pr, rlut, uas, vas, ua, zg, zos, tos, mlotst, thetao, so]),
    climate_model(name='HadGEM3MM',    variables=[siconc, tas, clt, pr, rlut, uas, vas, ua, zg, zos, tos, mlotst, thetao, so]),
    climate_model(name='ICON-ESM-LR',  variables=[siconc, tas, clt, pr, rlut, uas, vas, ua, zg, zos, tos, mlotst, thetao, so]),
    climate_model(name='IITM-ESM',     variables=[        tas, clt, pr, rlut, uas, vas, ua, zg,      tos,                   ]),
    climate_model(name='INM5',         variables=[siconc, tas, clt, pr, rlut, uas, vas, ua, zg,                   thetao, so]),
    climate_model(name='IPSL-CM6A-LR', variables=[siconc, tas, clt, pr, rlut, uas, vas, ua, zg, zos, tos, mlotst, thetao, so]),
    climate_model(name='KIOST-ESM',    variables=[siconc, tas, clt,     rlut, uas, vas, ua, zg, zos, tos, mlotst,           ]),
    climate_model(name='MCMUA1',       variables=[        tas,        pr, rlut, uas, vas, ua, zg,    tos,         thetao, so]),
    climate_model(name='MIROC6',       variables=[siconc, tas, clt, pr, rlut, uas, vas, ua, zg, zos, tos,                   ]),
    climate_model(name='MPI-ESM1-2-HR',variables=[siconc, tas, clt, pr, rlut, uas, vas, ua, zg, zos, tos, mlotst, thetao, so]),
    climate_model(name='MRI-ESM2-0',   variables=[siconc, tas, clt, pr, rlut, uas, vas,         zos, tos, mlotst, thetao, so]),
    climate_model(name='NESM3',        variables=[siconc, tas, clt, pr, rlut, uas, vas, ua, zg, zos, tos, mlotst, thetao, so]),   
    climate_model(name='NOAA-GFDL',    variables=[siconc, tas, clt, pr, rlut, uas, vas, ua, zg, zos, tos,         thetao, so]),
    climate_model(name='NorESM2-MM',   variables=[siconc, tas, clt, pr, rlut,           ua, zg, zos, tos, mlotst, thetao, so]),
    climate_model(name='SNU',          variables=[siconc, tas, clt, pr, rlut,           ua, zg, zos, tos,         thetao, so]),
    climate_model(name='TaiESM1',      variables=[siconc, tas, clt, pr, rlut,           ua, zg, zos, tos,         thetao, so]),
]

ece3= [    
    climate_model(name='EC-Earth3',    variables=[siconc, tas, clt, pr, rlut, uas, vas, ua, zg, zos, tos, mlotst, thetao, so]),
]

awi_cm3_v31= [
    climate_model(name='AWI-CM3-v3.1', variables=[siconc, tas, clt, pr, rlut, uas, vas, ua, zg, zos, tos, mlotst, thetao, so]),
]
                  
models = cmip6

eval_models = cmip6


#Select regions 
class region:
    def __init__ (self, name, domain, mask=False, active=False):
        self.name = name
        self.domain = domain
        self.mask = mask
        self.active = active
        

glob = region(name='glob', domain='mixed')
arctic = region(name='arctic', domain='mixed')
northmid = region(name='northmid', domain='mixed')
tropics = region(name='tropics', domain='mixed')
innertropics = region(name='innertropics', domain='mixed')
nino34 = region(name='nino34', domain='mixed')
southmid = region(name='southmid', domain='mixed')
antarctic = region(name='antarctic', domain='mixed')

Atlantic_Basin = region(name='Atlantic_Basin', domain='ocean')
Pacific_Basin = region(name='Pacific_Basin', domain='ocean')
Indian_Basin = region(name='Indian_Basin', domain='ocean')
Arctic_Basin = region(name='Arctic_Basin', domain='ocean')
Southern_Ocean_Basin = region(name='Southern_Ocean_Basin', domain='ocean')
Mediterranean_Basin = region(name='Mediterranean_Basin', domain='ocean')

Asia = region(name='Asia', domain='land')
North_America = region(name='North_America', domain='land')
Europe = region(name='Europe', domain='land')
Africa = region(name='Africa', domain='land')
South_America = region(name='South_America', domain='land')
Oceania = region(name='Oceania', domain='land')
Australia = region(name='Australia', domain='land')
Antarctica = region(name='Antarctica', domain='land')

complexity = 'all'

if complexity == 'boxes':
    regions = [arctic, northmid, tropics, nino34, southmid, antarctic]
elif complexity == 'boxes_all':
    regions = [glob, arctic, northmid, tropics, innertropics, nino34, southmid, antarctic]
elif complexity == 'regions':
    regions = [Atlantic_Basin, Pacific_Basin, Indian_Basin, Arctic_Basin, Southern_Ocean_Basin, 
                      Mediterranean_Basin, Asia, North_America, Europe, Africa, South_America, 
                      Oceania, Australia, Antarctica]
else:
    regions = [Atlantic_Basin, Pacific_Basin, Indian_Basin, Arctic_Basin, Southern_Ocean_Basin, 
                      Mediterranean_Basin, Asia, North_America, Europe, Africa, South_America, Oceania, 
                      Australia, Antarctica,glob, arctic, northmid, tropics, innertropics, nino34, 
                      southmid, antarctic]

        
#Select seasons
seasons = ['MAM', 'JJA', 'SON', 'DJF']


# # Dataloading

# In[23]:


# Retrieve Polygons; Read them; Interpolate to 2° x 2° masks; Concat into one DataArray 
file = pooch.retrieve(
    "https://pubs.usgs.gov/of/2006/1187/basemaps/continents/continents.zip", None
)

continents = gp.read_file("zip://" + file)
ocean_basins = gp.read_file("geojson/ocean_basins.geojson")

lon = np.arange(0, 360, 2)
lat = np.arange(-90, 90, 2)
continents_masks = regionmask.mask_3D_geopandas(continents, lon, lat)
ocean_basins_masks = regionmask.mask_3D_geopandas(ocean_basins, lon, lat)

ocean_basins_masks['region'==1]
ocean_basins_masks['region']=ocean_basins_masks.region+continents_masks.sizes['region']


# In[24]:


# Add simple box masks

#Define regions
boxes={
    'glob' : {
    'lat_min':-90,
    'lat_max':90,
    'lon_min':0,
    'lon_max':360,
    'plot_color':'none',},
         
    'arctic' : {
    'lat_min':60,
    'lat_max':90,
    'lon_min':0,
    'lon_max':360,
    'plot_color':'red',},
         
    'northmid' : {
    'lat_min':30,
    'lat_max':60,
    'lon_min':0,
    'lon_max':360,
    'plot_color':'lightgrey',},
         
    'tropics' : {
    'lat_min':-30,
    'lat_max':30,
    'lon_min':0,
    'lon_max':360,
    'plot_color':'green',},
         
    'innertropics' : {
    'lat_min':-15,
    'lat_max':15,
    'lon_min':0,
    'lon_max':360,
    'plot_color':'green',},
        
    'nino34' : {
    'lat_min':-5,
    'lat_max':5,
    'lon_min':190,
    'lon_max':240,
    'plot_color':'yellow',},
         
    'southmid' : {
    'lat_min':-60,
    'lat_max':-30,
    'lon_min':0,
    'lon_max':360,
    'plot_color':'pink',},
         
    'antarctic' : {
    'lat_min':-90,
    'lat_max':-60,
    'lon_min':0,
    'lon_max':360,
    'plot_color':'blue',},
    
    'southmid' : {
    'lat_min':-60,
    'lat_max':-30,
    'lon_min':0,
    'lon_max':360,
    'plot_color':'pink',},
          
}

# Create lat & lon filters based on box edges
boxlist=[]
for box in boxes:
    boxlist.append(box)
    
boxnum=[]
mask_lat=OrderedDict()
mask_lat=OrderedDict()
n=0
box_masks_np=np.empty(shape=(len(lat),len(lon),len(boxlist)))
for box in boxes:
    mask_lat=np.logical_and(lat>boxes[box]['lat_min'], lat<boxes[box]['lat_max'])
    mask_lon=np.logical_and(lon>boxes[box]['lon_min'], lon<boxes[box]['lon_max'])
    boxnum.append(n+ocean_basins_masks.sizes['region']+continents_masks.sizes['region']) # offset region number 

    
    # Make numpy array with gridded mask
    for i in range(0,len(lat)):
        for j in range(0,len(lon)):
            box_masks_np[i,j,n]=np.logical_and(mask_lat[i],mask_lon[j])
    n+=1     
    
# Same xarray format as complex ocean and continent masks above.
box_masks = xr.DataArray(box_masks_np, 
coords={'lat': lat,'lon': lon,'region': boxnum}, 
dims=["lat", "lon", "region"])


# In[25]:


masks=xr.concat((continents_masks,ocean_basins_masks,box_masks),dim="region")

if maskfixes:
    # Create Southern Ocean mask via xor nearby continental masks 
    save_orig = copy.deepcopy(masks.sel(region=12))
    masks[12,:,:] = np.logical_xor(masks.sel(region=12), masks.sel(region=4)) #South America
    masks[12,:,:] = np.logical_xor(masks.sel(region=12), masks.sel(region=5)) #Oceania
    masks[12,:,:] = np.logical_xor(masks.sel(region=12), masks.sel(region=6)) #Australia
    masks[12,:,:] = np.logical_xor(masks.sel(region=12), masks.sel(region=7)) #Antarctica
    masks[12,:,:] = np.logical_and(masks.sel(region=12), save_orig)

    # Fix the Arctic and Atlantic bleeding into Greenland
    save_orig = copy.deepcopy(masks.sel(region=8))
    masks[8,:,:] = np.logical_xor(masks.sel(region=8), masks.sel(region=1)) 
    masks[8,:,:] = np.logical_and(masks.sel(region=8), save_orig) 


# In[26]:


# Store masks as dictrionary for easy access
regions_avail = OrderedDict()


for i in range(0,continents_masks.sizes['region']):
    if verbose:
        print('Mask available for:',i,continents['CONTINENT'][i].replace(' ', '_'))
    regions_avail[continents['CONTINENT'][i].replace(' ', '_')]={ 
        'mask': masks[i]
    }
for i in range(0,ocean_basins_masks.sizes['region']):
    if verbose:
        print('Mask available for:',i,ocean_basins['name'][i].replace(' ', '_'))
    regions_avail[ocean_basins['name'][i].replace(' ', '_')]={ 
        'mask': masks[i+continents_masks.sizes['region']]
    }
for i in range(boxnum[0],boxnum[len(boxnum)-1]+1):
    if verbose:
        print('Mask available for:',i,boxlist[i-boxnum[0]].replace(' ', '_'))
    regions_avail[boxlist[i-boxnum[0]].replace(' ', '_')]={ 
        'mask': masks[i]
    }
    

# Select subset of available regions
for r in regions:
    if verbose:
        print('Selecting Mask for:',r.name)
    r.active = True
    r.mask = regions_avail[r.name]['mask']


# In[27]:


cm = plt.get_cmap('tab20')
f, ax = plt.subplots(subplot_kw=dict(projection=ccrs.PlateCarree()))
for i in range(0,ocean_basins_masks.sizes['region']+continents_masks.sizes['region']):
    cmap = mplc.ListedColormap(['#FFFFFF00', cm(1*i/masks.sizes['region'])])
    masks.sel(region=i).plot(
        ax=ax,
        transform=ccrs.PlateCarree(),
        add_colorbar=False,
        cmap=cmap,
    )

ax.coastlines(color="0.1");


# In[28]:


print('Loading obs data')

ds_obs = OrderedDict()

for var in obs:
    for depth in var.depths:
        for seas in seasons:
            if verbose == 'true':
                print('loading '+obs_path+var.name+'_'+var.obs+'_'+depth+'_'+seas+'.nc')

            intermediate = xr.open_dataset(obs_path+var.name+'_'+var.obs+'_'+depth+'_'+seas+'.nc')
            ds_obs[var.name,depth,seas] = intermediate.compute()
            try:
                ds_obs[var.name,depth,seas]=ds_obs[var.name,depth,seas].drop('time_bnds')
            except:
                pass
            try:
                ds_obs[var.name,depth,seas]=ds_obs[var.name,depth,seas].drop('time_bnds_2')
            except:
                pass
            try:
                ds_obs[var.name,depth,seas]=ds_obs[var.name,depth,seas].drop('depth')
            except:
                pass
            


# In[29]:


print('Loading model data')

ds_model = OrderedDict()

for model in tqdm(models):
    for var in model.variables:
        for depth in var.depths:
            for seas in seasons:
                if verbose == 'true':
                    print('loading '+model_path+var.name+'_'+model.name+'_'+time+'_'+depth+'_'+seas+'.nc')
                intermediate = xr.open_mfdataset(model_path+var.name+'_'+model.name+'_'+time+'_'+depth+'_'+seas+'.nc')
                intermediate = intermediate.squeeze(drop=True)
                ds_model[var.name,depth,seas,model.name] = intermediate.compute()
                try:
                    ds_model[var.name,depth,seas,model.name]=ds_model[var.name,depth,seas,model.name].drop('time_bnds')
                except:
                    pass
                try:
                    ds_model[var.name,depth,seas,model.name]=ds_model[var.name,depth,seas,model.name].drop('depth')
                except:
                    pass


# # CMIP calcluations

# In[30]:


print('Calculating absolute error and field mean of abs error')

# Returns equvalent to cdo fldmean ()
def fldmean(ds):
    weights = np.cos(np.deg2rad(ds.lat))
    weights.name = "weights"
    ds_weighted = ds.weighted(weights)
    return ds.mean(("lon", "lat"))


abs_error = OrderedDict()
mean_error = OrderedDict()

for model in tqdm(models):
    for var in model.variables:
        for depth in var.depths:
            for region in regions:
                for seas in seasons:
                    abs_error[var.name,depth,seas,model.name,region.name]=np.sqrt((ds_model[var.name,depth,seas,model.name].where(region.mask)-
                                                       ds_obs[var.name,depth,seas]).where(region.mask)*
                                                      (ds_model[var.name,depth,seas,model.name].where(region.mask)-
                                                       ds_obs[var.name,depth,seas].where(region.mask)))
                    mean_error[var.name,depth,seas,model.name,region.name] = fldmean(abs_error[var.name,depth,seas,model.name,region.name])


# In[31]:


print('Writing field mean of errors into csv files')

for model in tqdm(models):
    with open(out_path+'abs/'+model.name+'.csv', 'w', newline='') as csvfile:
        writer = csv.writer(csvfile, delimiter=' ',quotechar='|', quoting=csv.QUOTE_MINIMAL)
        writer.writerow(['Variable','Region','Level','Season','AbsMeanError'])
        for var in model.variables:
            for region in regions:
                for depth in var.depths:
                    for seas in seasons:
                        if verbose:
                            print(seas, depth, region.name, var.name, model.name)
                        writer.writerow([var.name,region.name,depth,seas,np.squeeze(mean_error[var.name,depth,seas,model.name,region.name].to_array(var.name).values[0])])


# In[32]:


print('Reading precalculated cmip6 field mean of errors from csv files')

max_depth=0
for var in obs:
    if len(var.depths) > max_depth:
        max_depth = len(var.depths)

regions_names = []
for region in regions:
    regions_names.append(region.name)
    
collect = np.empty([len(eval_models),number_of_implemented_variables,len(regions),max_depth,len(seasons)])*np.nan
i=0
for eval_model in tqdm(eval_models):
    df = pd.read_csv(eval_path+eval_model.name+'.csv', delimiter=' ')
    values = df['AbsMeanError']
    regions_csv = df['Region']
    var_csv = df['Variable']
    j=0
    r=0
    for var in obs:
        k=0
        a=(df['Variable']==var.name).to_list()
        if verbose == 'true':
            if any(a): # Check if variable appears in list. If not, skip it.
                print('reading: ',eval_model.name,var.name)
            else:
                print('filling: ',eval_model.name,var.name)

        for region in regions:
            l=0
            for depth in var.depths:
                m=0
                for seas in seasons:
                    if any(a): # Check if variable appears in csv. If not, skip it.
                        if regions_csv[r] not in regions_names: # Check if region from csv part of the analysis. Else advance
                            while True:
                                r+=1
                                if regions_csv[r] in regions_names:
                                    break
                        if verbose:
                            print(eval_model.name,var.name,region.name,depth,seas,values[r])
                        collect[i,j,k,l,m]=values[r]
                        r+=1
                    m+=1
                l+=1
            k+=1
        j+=1
    i+=1
# Ignoring non useful warning:
# /tmp/ipykernel_19478/363568120.py:37: RuntimeWarning: Mean of empty slice
#  ensmean=np.nanmean(collect,axis=0)
with warnings.catch_warnings():
    warnings.simplefilter("ignore", category=RuntimeWarning)
    ensmean=np.nanmean(collect,axis=0)


# In[33]:


print('Placing sums of error into easier to inspect dictionary')

eval_error_mean = OrderedDict()

j=0
for var in obs:
    k=0
    for region in regions:
        l=0
        for depth in var.depths:
            m=0
            for seas in seasons:
                eval_error_mean[var.name,region.name,depth,seas]=ensmean[j,k,l,m]
                m+=1
            l+=1
        k+=1
    j+=1


# In[34]:


print('Calculating ratio of current model error to evaluation model error')

error_fraction = OrderedDict()

sum=0
for model in tqdm(models):
    for var in model.variables:
        for region in regions:
            for depth in var.depths:
                for seas in seasons:
                    if var.domain == 'oce' and region.domain == 'land':
                        if verbose:
                            print('setting nan for', var.name,depth,seas,model.name,region.name)
                        error_fraction[var.name,depth,seas,model.name,region.name] = mean_error[var.name,depth,seas,model.name,region.name] * np.nan
                    else:
                        if verbose:
                            print('using calculated value for', var.name,depth,seas,model.name,region.name)
                        error_fraction[var.name,depth,seas,model.name,region.name] = mean_error[var.name,depth,seas,model.name,region.name] / eval_error_mean[var.name,region.name,depth,seas]


# In[35]:


print('Writing ratio of field mean of errors into csv files and sum up error fractions for cmpi score')

cmpi = OrderedDict()

for model in tqdm(models):
    sum=0
    iter=0
    with open(out_path+'frac/'+model.name+'_fraction.csv', 'w', newline='') as csvfile:
        writer = csv.writer(csvfile, delimiter=' ',quotechar='|', quoting=csv.QUOTE_MINIMAL)
        writer.writerow(['Variable','Region','Level','Season','FracMeanError'])
        for var in model.variables:
            for depth in var.depths:
                for region in regions:
                    for seas in seasons:
                        writer.writerow([var.name,region.name,depth,seas,np.squeeze(error_fraction[var.name,depth,seas,model.name,region.name].to_array(var.name).values[0])])
                        if np.isnan(np.squeeze(error_fraction[var.name,depth,seas,model.name,region.name].to_array(var.name).values[0])):
                            pass
                        else:
                            sum+=np.squeeze(error_fraction[var.name,depth,seas,model.name,region.name].to_array(var.name).values[0])
                            iter+=1
        cmpi[model.name]=np.squeeze(sum)/iter
        writer.writerow(['CMPI','global','yearly',cmpi[model.name]])


# # Plotting

# In[36]:


print('Reading precalculated evaluation field means of errors from csv files and plotting heatmap(s)')

# Make sure we loop often enough to catch the variables with the most number of levels/depths
max_depth=0
for var in obs:
    if len(var.depths) > max_depth:
        max_depth = len(var.depths)

plt.rcParams.update({'figure.max_open_warning': 0})
collect_frac_non = OrderedDict()
for model in tqdm(models):
    df = pd.read_csv(out_path+'frac/'+model.name+'_fraction.csv', delimiter=' ')
    values = df['FracMeanError'] #you can also use df['column_name']
    r=0
    for var in obs:
        a=(df['Variable']==var.name).to_list()
        if verbose == 'true':
            if any(a): # Check if variable appears in list. If not, skip it.
                print('reading: ',model.name,var.name)
            else:
                print('filling: ',model.name,var.name)
        for depth in var.depths:
            for region in regions:
                for seas in seasons:
                    if any(a):
                        collect_frac_non[var.name+' '+region.name,depth+' '+seas]=values[r]
                        r+=1
                    else:
                        collect_frac_non[var.name+' '+region.name,depth+' '+seas]=np.nan


    seasons_plot = [' MAM', ' JJA', ' SON', ' DJF'] #adding spaces in front
    a=seasons_plot*len(regions)
    b=np.repeat(regions_names,len(seasons_plot))
    coord=[n+str(m) for m,n in zip(a,b)]
    
    index_obs=[]
    for var in obs:
        for depth in var.depths:
            if depth == 'surface':
                levelname=''
            else:
                levelname=depth+' '
            if var == 'zos' or var == 'tos':
                levelname='st. dev. '
            index_obs.append(levelname+var.name)
    if verbose == 'true':
        print(model.name,'number of values: ',len(list(collect_frac_non.values())),'; shape:',len(index_obs),'x',len(regions)*len(seasons))
    collect_frac_reshaped = np.array(list(collect_frac_non.values()) ).reshape(len(index_obs),len(regions)*len(seasons)) # transform to 2D
    collect_frac_dataframe = pd.DataFrame(data=collect_frac_reshaped, index=index_obs, columns=coord)

    fig, ax = plt.subplots(figsize=((len(regions)*len(seasons))/1.5,len(index_obs)/1.5))
    fig.patch.set_facecolor('white')
    plt.rcParams['axes.facecolor'] = 'white'
    ax = sns.heatmap(collect_frac_dataframe, vmin=0.5, vmax=1.5,center=1,annot=True,fmt='.2f',cmap="PiYG_r",cbar=False,linewidths=1)
    plt.xticks(rotation=90,fontsize=14)
    plt.yticks(rotation=0, ha='right',fontsize=14)
    plt.title(model.name+' CMPI: '+str(round(cmpi[model.name],3)), fontsize=18)
    
    plt.savefig(out_path+'plot/'+model.name+'.png',dpi=300,bbox_inches='tight')
    i+=1


# In[ ]:





# In[69]:


'''# Debug plot script


import cartopy.crs as ccrs
import cartopy.feature as cfeature
from cartopy.util import add_cyclic_point
import cmocean
import math

for model in tqdm(models):
    for seas in seasons:
        depth=0
        levels=np.linspace(-10,10,11)
        #levels=np.linspace(-0,2000,11)
        var='clt'

        %matplotlib inline

        fig, ax = plt.subplots(nrows=1, ncols=1, figsize=(6,4.5))
        ax=plt.subplot(1,1,1,projection=ccrs.PlateCarree())
        ax.add_feature(cfeature.COASTLINE,zorder=3)


        data = ds_model[var,depth,seas,model].to_array(var).values[0]
        obsp = np.squeeze(ds_obs[var,depth,seas].to_array(var).values[0])
        #data_to_plot = data[0:90,:]-obsp[0:90,:]
        data_to_plot = obsp[0:90,:]

        lon = np.arange(0, 360, 2)
        lat = np.arange(-90, 90, 2)

        imf=plt.contourf(lon, lat, data_to_plot, cmap=plt.cm.PuOr_r,levels=levels, extend='both', transform=ccrs.PlateCarree())

        ax.set_title(model+' '+var+' '+depth+' '+seas,fontweight="bold")
        plt.tight_layout() 
        gl = ax.gridlines(crs=ccrs.PlateCarree(), draw_labels=True,
                      linewidth=1, color='gray', alpha=0.2, linestyle='-')

        gl.xlabels_bottom = False    
        cbar_ax_abs = fig.add_axes([0.15, 0.11, 0.7, 0.05])
        cbar_ax_abs.tick_params(labelsize=12)
        cb = fig.colorbar(imf, cax=cbar_ax_abs, orientation='horizontal')
        cb.ax.tick_params(labelsize='12')
        plt.savefig(out_path+'plot/maps/'+model+'_'+var+'_'+seas+'.png',dpi=200,bbox_inches='tight')
'''


# In[165]:



'''

# Debug plot script


import cartopy.crs as ccrs
import cartopy.feature as cfeature
from cartopy.util import add_cyclic_point
import cmocean
import math

model="EC-Earth3"

for seas in seasons:
    depth=0
    levels=np.linspace(-40,40,11)
    #levels=np.linspace(-0,2000,11)
    var='siconc'

    %matplotlib inline

    fig, ax = plt.subplots(nrows=1, ncols=1, figsize=(6,4.5))
    ax=plt.subplot(1,1,1,projection=ccrs.PlateCarree())
    ax.add_feature(cfeature.COASTLINE,zorder=3)


    #data = np.squeeze(regions['Africa']['mask'])
    data = masks[9,:,:]

    #data_to_plot = data[0:90,:]-obsp[0:90,:]
    data_to_plot = data[0:90,:]

    lon = np.arange(0, 360, 2)
    lat = np.arange(-90, 90, 2)

    imf=plt.contourf(lon, lat, data_to_plot, cmap=plt.cm.PuOr_r,levels=levels, extend='both', transform=ccrs.PlateCarree())

    ax.set_title(model+' '+var+' '+depth+' '+seas,fontweight="bold")
    plt.tight_layout() 
    gl = ax.gridlines(crs=ccrs.PlateCarree(), draw_labels=True,
                      linewidth=1, color='gray', alpha=0.2, linestyle='-')

    gl.xlabels_bottom = False    
    cbar_ax_abs = fig.add_axes([0.15, 0.11, 0.7, 0.05])
    cbar_ax_abs.tick_params(labelsize=12)
    cb = fig.colorbar(imf, cax=cbar_ax_abs, orientation='horizontal')
    cb.ax.tick_params(labelsize='12')
    plt.savefig(out_path+'plot/maps/'+model+'_'+var+'_'+seas+'.png',dpi=200,bbox_inches='tight')'''


# In[ ]:


Mask available for: 0 Asia
Mask available for: 1 North_America
Mask available for: 2 Europe
Mask available for: 3 Africa
Mask available for: 4 South_America
Mask available for: 5 Oceania
Mask available for: 6 Australia
Mask available for: 7 Antarctica
Mask available for: 0 Atlantic_Basin
Mask available for: 1 Pacific_Basin
Mask available for: 2 Indian_Basin
Mask available for: 3 Arctic_Basin
Mask available for: 4 Southern_Ocean_Basin
Mask available for: 5 Mediterranean_Basin
Mask available for: 14 glob
Mask available for: 15 arctic
Mask available for: 16 northmid
Mask available for: 17 tropics
Mask available for: 18 innertropics
Mask available for: 19 nino34
Mask available for: 20 southmid
Mask available for: 21 antarctic


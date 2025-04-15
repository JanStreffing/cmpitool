def add_masks(regions, verbose, maskfixes=True):
    '''
    Add geographical masks to region objects for spatial analysis.
    
    This function loads pre-defined geographical masks for the specified regions
    and attaches them to the region objects. Masks are used to restrict analysis
    to specific geographical areas when calculating model performance.
    
    Parameters
    ----------
    regions : list
        List of region objects to which masks will be added
    verbose : bool
        Whether to print detailed information during execution
    maskfixes : bool, optional
        Whether to apply corrections for overlapping ocean basins and continents (default: True)
        
    Returns
    -------
    regions : list
        The input list of region objects, now with mask attributes added
        
    Notes
    -----
    The function loads mask data from NetCDF files in a specific format and 
    structure. If maskfixes is True (set in the main cmpitool function), it applies
    corrections for overlapping ocean basins and continents.
    
    Examples
    --------
    >>> from cmpitool import cmpisetup
    >>> variable, region, climate_model, *_ = cmpisetup()
    >>> regions = [region(name='arctic', domain='mixed'), region(name='Europe', domain='land')]
    >>> regions = add_masks(regions, verbose=True)
    
    AUTHORS:
    Jan Streffing               2022-11-30      Split off from main tool
    '''
    import pooch
    import geopandas as gp
    import numpy as np
    import regionmask
    from collections import OrderedDict
    import xarray as xr
    import copy
    import matplotlib.pyplot as plt
    from matplotlib import colors as mplc
    import os
    import pkg_resources


    # Retrieve Polygons; Read them; Interpolate to 2° x 2° masks; Concat into one DataArray 
    file = pooch.retrieve(
        "https://pubs.usgs.gov/of/2006/1187/basemaps/continents/continents.zip", None
    )

    continents = gp.read_file("zip://" + file)
    
    # Find the ocean_basins.geojson file regardless of installation method
    try:
        # Method 1: Try pkg_resources for installed package
        ocean_basins_path = pkg_resources.resource_filename('cmpitool', 'data/ocean_basins.geojson')
        if not os.path.exists(ocean_basins_path):
            # Method 2: Try relative path for development
            ocean_basins_path = os.path.join(os.path.dirname(os.path.dirname(os.path.abspath(__file__))), 
                                           'geojson', 'ocean_basins.geojson')
            if not os.path.exists(ocean_basins_path):
                # Method 3: Last resort - try direct relative path
                ocean_basins_path = "geojson/ocean_basins.geojson"
    except (ImportError, FileNotFoundError):
        # Fallback for older versions of Python/pkg_resources
        ocean_basins_path = "geojson/ocean_basins.geojson"
        
    if verbose:
        print(f"Loading ocean basins from: {ocean_basins_path}")
        
    ocean_basins = gp.read_file(ocean_basins_path)

    lon = np.arange(0, 360, 2)
    lat = np.arange(-90, 90, 2)
    continents_masks = regionmask.mask_3D_geopandas(continents, lon, lat)
    ocean_basins_masks = regionmask.mask_3D_geopandas(ocean_basins, lon, lat)

    ocean_basins_masks['region'==1]
    ocean_basins_masks['region']=ocean_basins_masks.region+continents_masks.sizes['region']


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
    '''
    import cartopy.crs as ccrs
    import cartopy.feature as cfeature
    if verbose:
        print('plotting continents and ocean basins')
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
    '''

    return regions

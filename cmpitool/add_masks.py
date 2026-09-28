'''
Region masks on the 2 degree grid.

AUTHORS:
Jan Streffing               2022-11-30      Split off from main tool
Jan Streffing               2026-09-29      One DataArray of masks, fixes selected by name
'''

__all__ = ['add_masks', 'build_masks', 'BOXES']

# Latitude-longitude boxes: (lat_min, lat_max, lon_min, lon_max). Grid points on
# an edge belong to no box, which drops the rows at -90, +-60 and +-30 and the
# column at 0E; the reference CSVs were made that way (fixed in stack C, #62).
BOXES = {
    'glob':         (-90, 90, 0, 360),
    'arctic':       (60, 90, 0, 360),
    'northmid':     (30, 60, 0, 360),
    'tropics':      (-30, 30, 0, 360),
    'innertropics': (-15, 15, 0, 360),
    'nino34':       (-5, 5, 190, 240),
    'southmid':     (-60, -30, 0, 360),
    'antarctic':    (-90, -60, 0, 360),
}

CONTINENTS_URL = "https://pubs.usgs.gov/of/2006/1187/basemaps/continents/continents.zip"


def _ocean_basins_path():
    '''Find ocean_basins.geojson for an installed package or a checkout.'''
    import os
    import pkg_resources

    try:
        path = pkg_resources.resource_filename('cmpitool', 'data/ocean_basins.geojson')
        if not os.path.exists(path):
            path = os.path.join(os.path.dirname(os.path.dirname(os.path.abspath(__file__))),
                                'geojson', 'ocean_basins.geojson')
            if not os.path.exists(path):
                path = "geojson/ocean_basins.geojson"
    except (ImportError, FileNotFoundError):
        path = "geojson/ocean_basins.geojson"
    return path


def build_masks(maskfixes=True, verbose=False):
    '''
    Masks of all boxes, ocean basins and continents on the 2 degree grid.

    INPUT:
    maskfixes                   Remove the continents from the Southern Ocean basin
                                and North America from the Atlantic basin
    verbose                     Print where the ocean basins are read from

    RETURN:
    masks                       Boolean DataArray (region, lat, lon) with region names
                                as the region coordinate
    '''
    import geopandas as gp
    import numpy as np
    import pooch
    import regionmask
    import xarray as xr

    lon = np.arange(0, 360, 2)
    lat = np.arange(-90, 90, 2)

    def polygon_masks(polygons, names):
        masks = regionmask.mask_3D_geopandas(polygons, lon, lat, overlap=True)
        # regionmask numbers the polygons by position and leaves out empty ones
        names = [names[i].replace(' ', '_') for i in masks.region.values]
        return masks.drop_vars(['abbrevs', 'names'], errors='ignore').assign_coords(region=names)

    continents = gp.read_file("zip://" + pooch.retrieve(CONTINENTS_URL, None))
    ocean_basins_path = _ocean_basins_path()
    if verbose:
        print(f"Loading ocean basins from: {ocean_basins_path}")
    ocean_basins = gp.read_file(ocean_basins_path)

    boxes = xr.DataArray(
        np.stack([np.outer((lat > lat_min) & (lat < lat_max), (lon > lon_min) & (lon < lon_max))
                  for lat_min, lat_max, lon_min, lon_max in BOXES.values()]),
        coords={'region': list(BOXES), 'lat': lat, 'lon': lon}, dims=('region', 'lat', 'lon'))

    masks = xr.concat([polygon_masks(continents, list(continents['CONTINENT'])),
                       polygon_masks(ocean_basins, list(ocean_basins['name'])),
                       boxes], dim='region')

    if maskfixes:
        # Continents overlapping the Southern Ocean basin polygon
        southern = masks.sel(region='Southern_Ocean_Basin')
        fixed = southern
        for land in ['South_America', 'Oceania', 'Australia', 'Antarctica']:
            fixed = np.logical_xor(fixed, masks.sel(region=land))
        masks.loc[dict(region='Southern_Ocean_Basin')] = fixed & southern

        # The Atlantic basin polygon bleeding into Greenland
        atlantic = masks.sel(region='Atlantic_Basin')
        masks.loc[dict(region='Atlantic_Basin')] = np.logical_xor(atlantic, masks.sel(region='North_America')) & atlantic

    if verbose:
        for name in masks.region.values:
            print('Mask available for:', name)
    return masks


def add_masks(regions, verbose, maskfixes=True):
    '''
    Attach the mask of each region to its Region object and mark it active.

    Parameters
    ----------
    regions : list
        List of Region objects, named after a box, ocean basin or continent
    verbose : bool
        Whether to print detailed information during execution
    maskfixes : bool, optional
        Whether to apply corrections for overlapping ocean basins and continents (default: True)

    Returns
    -------
    regions : list
        The input list of Region objects, with mask and active set

    Examples
    --------
    >>> from cmpitool import Region
    >>> regions = [Region(name='arctic', domain='mixed'), Region(name='Europe', domain='land')]
    >>> regions = add_masks(regions, verbose=True)
    '''
    masks = build_masks(maskfixes, verbose)
    known = list(masks.region.values)
    for region in regions:
        if region.name not in known:
            raise ValueError("No mask for region '"+region.name+"'. Known: "+', '.join(known))
        if verbose:
            print('Selecting Mask for:', region.name)
        region.active = True
        region.mask = masks.sel(region=region.name)
    return regions

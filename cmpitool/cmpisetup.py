def cmpisetup(reanalysis='ERA5'):
    '''
    Set up core classes and default variables for CMPITool.
    
    This function provides the necessary classes and predefined variable objects
    to facilitate configuration of CMPITool. It creates the main classes (variable,
    region, climate_model) and initializes common climate variables with appropriate
    observational datasets, depths, and domains.
    
    Parameters
    ----------
    reanalysis : str, optional
        Name of reanalysis dataset to use for atmospheric variables.
        Options are 'ERA5' (default) or 'NCEP2'
        
    Returns
    -------
    variable : class
        Class for creating variable objects
    region : class
        Class for creating region objects
    climate_model : class
        Class for creating climate model objects
    siconc : variable
        Sea ice concentration variable object
    tas : variable
        Near-surface air temperature variable object
    clt : variable
        Total cloud cover fraction variable object
    pr : variable
        Precipitation variable object
    rlut : variable
        Outgoing longwave radiation at top of atmosphere variable object
    uas : variable
        Eastward near-surface wind variable object
    vas : variable
        Northward near-surface wind variable object
    ua : variable
        Eastward wind at pressure levels variable object
    zg : variable
        Geopotential height variable object
    zos : variable
        Sea surface height variable object

    mlotst : variable
        Ocean mixed layer thickness variable object
    thetao : variable
        Sea water potential temperature variable object
    so : variable
        Sea water salinity variable object
        
    Examples
    --------
    >>> from cmpitool import cmpisetup
    >>> variable, region, climate_model, siconc, tas, clt, pr, rlut, uas, vas, ua, zg, zos, mlotst, thetao, so = cmpisetup()
    >>> models = [climate_model(name='MODEL-NAME', variables=[tas, pr, ua])]
    
    Notes
    -----
    Classes created by this function:
    
    variable(name, obs, depths, domain='mixed', active=True):
        Class representing a climate variable for analysis
        
    region(name, domain, mask=False, active=False):
        Class representing a geographical region for analysis
        
    climate_model(name, variables):
        Class representing a climate model with associated variables
    
    AUTHORS:
    Jan Streffing               2022-12-01      Created to simplify setting up tool
    '''


    # Setup variables (turn off variables for analysis by instancing with optional argument active=False)
    class variable:
        def __init__ (self, name, obs, depths, domain='mixed', active=True):
            self.name = name
            self.obs = obs
            self.depths = depths
            self.domain = domain
            self.active = active

    #Setting up the region class:
    class region:
        def __init__ (self, name, domain, mask=False, active=False):
            self.name = name
            self.domain = domain
            self.mask = mask
            self.active = active

    # Some models don't have all variables available. Thus set give each model a name and a variable dictionary
    class climate_model:
        def __init__ (self, name, variables):
            self.name = name
            self.variables = variables

    

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

    mlotst = variable(name='mlotst', obs='C-GLORSv7', depths=['surface'], domain='oce')
    thetao = variable(name='thetao', obs='EN4', depths=['10m','100m','1000m'], domain='oce')
    so = variable(name='so', obs='EN4', depths=['10m','100m','1000m'], domain='oce')

    return variable, region, climate_model, siconc, tas, clt, pr, rlut, uas, vas, ua, zg, zos, mlotst, thetao, so

def cmpisetup(reanalysis='ERA5'):
    '''
    AUTHORS:
    Jan Streffing               2022-12-01      Created to simplify setting up tool

    DESCRIPTION:
    This function provides classes and the default set of variable objects to 
    facilitate your configuration of cmpitool.
    
    INPUT:
    reanalysis                  String allowing switch between ERA5 and NCEP2 for the 
                                variables where obs come from atmopsheric reanalysis
                                systems (tas, uas, vas, ua, zg)
    RETURN:
    variable                    Class for creating variable objects
    region                      Class for creating region objects
    climate_model               Class for creating climate model objects
    siconc                      Variable object for sea ice concentration
    tas                         Variable object for near surface air temperature
    clt                         Variable object for total cloud cover fraction 
    pr                          Variable object for precipitation
    rlut                        Variable object for residual longwave upward thermal radiation
    uas                         Variable object for u component of near surface wind
    vas                         Variable object for v component of near surface wind
    ua                          Variable object for u component of 3D wind
    zg                          Variable object for v component of 3D wind
    zos                         Variable object for sea surface height
    tos                         Variable object for ocean surface temperature
    mlotst                      Variable object for mixed layer depth
    thetao                      Variable object for 3D ocean temperature
    so                          Variable object for 3D ocean salinity
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
    tos = variable(name='tos', obs='HadISST2', depths=['surface'], domain='oce')
    mlotst = variable(name='mlotst', obs='C-GLORSv7', depths=['surface'], domain='oce')
    thetao = variable(name='thetao', obs='EN4', depths=['10m','100m','1000m'], domain='oce')
    so = variable(name='so', obs='EN4', depths=['10m','100m','1000m'], domain='oce')

    return variable, region, climate_model, siconc, tas, clt, pr, rlut, uas, vas, ua, zg, zos, tos, mlotst, thetao, so


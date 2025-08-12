def cmpitool(model_path: str, models: list, eval_models: list = None, out_path: str = 'output/', obs_path: str = 'obs/' , reanalysis: str = 'ERA5', 
             eval_path: str = None, time: str = '198912-201411', seasons: list = ['MAM', 'JJA', 'SON', 'DJF'], 
             maskfixes: bool = True, use_for_eval: bool = False, complexity: str = 'boxes', verbose: bool = False, biasmaps: bool = False, biasmap_limits: dict = None) -> dict:
    '''
    Main function for Climate Model Performance Index calculation and evaluation.
    
    This function coordinates the entire workflow of the Climate Model Performance Index (CMPI)
    tool, from loading data to calculating performance metrics and generating visualizations.
    It evaluates climate models against observational data and computes normalized performance
    indices following the methodology of Reichler and Kim (2008).
    
    Parameters
    ----------
    model_path : str
        Path to directory containing preprocessed model data files
    models : list
        List of climate_model objects to be evaluated
    eval_models : list, optional
        List of climate_model objects used as reference for evaluation.
        If None (default), a set of 30 CMIP6 models will be used.
    out_path : str, optional
        Path to directory where output files will be stored (default: 'output/')
    obs_path : str, optional
        Path to directory containing observational/reanalysis data (default: 'obs/')
    reanalysis : str, optional
        Reanalysis dataset to use ('ERA5' or 'NCEP2') for atmospheric variables 
        (default: 'ERA5')
    eval_path : str, optional
        Path to directory containing pre-computed error values for reference models.
        If None (default), 'eval/{reanalysis}/' will be used.
    time : str, optional
        Time period for analysis in format 'YYYYMM-YYYYMM' (default: '198912-201411')
    seasons : list, optional
        List of seasons to analyze (default: ['MAM', 'JJA', 'SON', 'DJF'])
    maskfixes : bool, optional
        Whether to apply corrections for overlapping ocean basins and continents 
        (default: True)
    use_for_eval : bool, optional
        Whether to save results for future use as reference data (default: False)
    complexity : str, optional
        Geographical complexity level: 'boxes' for lat/lon boxes or 'regions' for 
        continents & ocean basins (default: 'boxes')
    verbose : bool, optional
        Whether to print detailed information during execution (default: False)
    biasmaps : bool, optional
        Whether to generate bias map plots (default: False)
    biasmap_limits : dict, optional
        Dictionary of fixed plot limits for bias maps using variable names as keys and float values as limits.
        If not provided, limits will be calculated dynamically based on data standard deviation (default: None)
        
    Returns
    -------
    error_fraction : OrderedDict
        Dictionary containing performance fractions for each model, variable, 
        region, and season
    
    Notes
    -----
    The function performs the following steps:
    1. Sets up predefined variables, regions, and model configurations
    2. Loads observational data and model outputs
    3. Calculates absolute errors between models and observations
    4. Computes performance metrics relative to reference models
    5. Generates visualizations of results
    
    If you add new variables to the tool and generate new reference CSV files, 
    you'll need to update the n_implemented_var value (currently 14) accordingly.
    
    Examples
    --------
    >>> from cmpitool import cmpitool, cmpisetup
    >>> variable, region, climate_model, *_ = cmpisetup()
    >>> # Create model objects
    >>> mymodel = climate_model(name='MyModel', variables=[variable[0], variable[1]])
    >>> # Run the tool
    >>> result = cmpitool('model_data/', [mymodel], out_path='results/')
    
    AUTHORS:
    Jan Streffing               2022-12-01      Split off from main tool
    '''
    from cmpitool import (cmpisetup, config_cmip6, add_masks, loading_obs, loading_models, calculate_errors,
                          write_errors, read_errors, calculate_fractions, write_fractions, plotting_heatmaps, plotting_biasmaps)

    #Setup safe paths
    obs_path=obs_path+'/'
    model_path=model_path+'/'
    out_path=out_path+'/'
    if eval_path == None:
        eval_path='eval/'+reanalysis+'/'
    else:
        eval_path=eval_path+'/'

    variable, region, climate_model, siconc, tas, clt, pr, rlut, uas, vas, ua, zg, zos, mlotst, thetao, so = cmpisetup()

    obs = [siconc, tas, clt, pr, rlut, uas, vas, ua, zg, zos, mlotst, thetao, so]

    '''
    If you don't add all variables to obs for your analysis, the missing ones will be skipped.
    However the variables are still present in the pre-generated .csv files. 
    We still need to loop over the skipped variables to access the right lines. 
    Thus we set number_of_implemented_variables manually, currently to 14.
    - If you add more variables and generate new .csv files, increase the number 14 accordingly!
    - If you just skip a variable for your analysis, don't change number_of_implemented_variables!
    '''
    n_implemented_var = 14 
            
    #The CMIP6 models are set up by default in their own function
    cmip6_models = config_cmip6(climate_model, obs)

    #The use can define their own set of evaluation models. If they don't we use cmip6 by default.
    if eval_models == None:
        eval_models = cmip6_models

    #Instancing default regions:
    #Boxes:
    glob = region(name='glob', domain='mixed')
    arctic = region(name='arctic', domain='mixed')
    northmid = region(name='northmid', domain='mixed')
    tropics = region(name='tropics', domain='mixed')
    innertropics = region(name='innertropics', domain='mixed')
    nino34 = region(name='nino34', domain='mixed')
    southmid = region(name='southmid', domain='mixed')
    antarctic = region(name='antarctic', domain='mixed')
    #Ocean basins:
    Atlantic_Basin = region(name='Atlantic_Basin', domain='ocean')
    Pacific_Basin = region(name='Pacific_Basin', domain='ocean')
    Indian_Basin = region(name='Indian_Basin', domain='ocean')
    Arctic_Basin = region(name='Arctic_Basin', domain='ocean')
    Southern_Ocean_Basin = region(name='Southern_Ocean_Basin', domain='ocean')
    Mediterranean_Basin = region(name='Mediterranean_Basin', domain='ocean')
    #Landmasses:
    Asia = region(name='Asia', domain='land')
    North_America = region(name='North_America', domain='land')
    Europe = region(name='Europe', domain='land')
    Africa = region(name='Africa', domain='land')
    South_America = region(name='South_America', domain='land')
    Oceania = region(name='Oceania', domain='land')
    Australia = region(name='Australia', domain='land')
    Antarctica = region(name='Antarctica', domain='land')

    #Select which of the above you actually want to use by added them to the list of regions.
    #complexity allows choosing from some premade lists.

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

        
    #####################################
    # End of user config, start of tool #
    #####################################

    #Function to add masks to the selected regions
    regions = add_masks(regions, verbose)
    
    #Loading observational data
    ds_obs = loading_obs(obs, obs_path, seasons, verbose)

    #Loading model data
    ds_model = loading_models(models, model_path, seasons, time, verbose)
        
    #Calculate model absolute error fields and area weighted means
    abs_error, mean_error = calculate_errors(ds_model, ds_obs, models, regions, seasons, verbose)
    
    #Writing errors into csv files that can be:
    # a) read in for further cmip calculation
    # b) placed into eval/ subfolder to read as evaluation data
    write_errors(abs_error, mean_error, models, regions, seasons, out_path, use_for_eval, eval_path, verbose)

    #Reading in previously written absolute errors
    eval_error_mean = read_errors(obs, eval_models, regions, seasons, out_path, eval_path, 
                                  n_implemented_var, verbose)
    
    #Calculate fraction between your model errors and the evaluation model errors
    error_fraction = calculate_fractions(models, regions, seasons, mean_error, eval_error_mean, verbose)
    
    cmpi =  write_fractions(error_fraction, models, regions, seasons, out_path, verbose)
    
    plotting_heatmaps(models, regions, seasons, obs, error_fraction, cmpi, out_path, verbose)
    
    if biasmaps == True:
        plotting_biasmaps(ds_model, ds_obs , models, seasons, obs, out_path, verbose, biasmap_limits)

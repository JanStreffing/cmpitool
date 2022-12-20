def cmpitool(model_path, models, eval_models=None, out_path='output/', obs_path='obs/' , reanalysis='ERA5', 
             eval_path=None, time='198912-201411', seasons=['MAM', 'JJA', 'SON', 'DJF'], 
             maskfixes=True, use_for_eval=False, complexity='boxes', verbose=False):
    '''
    AUTHORS:
    Jan Streffing		2022-12-01	Split off from main tool

    DESCRIPTION:
    This is the main function of the cmpitool. Here we set up the default configration 
    and call all subsequent functions.
    
    INPUT:
    model_path                  Path pointing towards the output of your model,
                                preprocessed to be read in by cmiptool
    models		        List of climate model objects to be evaluated via cmiptool
    eval_models                 List of climate model objects used as reference for evaluation
                                By default this is set to None, which results in a set of 30 CMIP6
                                being used
    out_path                    String pointing to the folder in which results will be stored
    obs_path                    String pointing to the folder in which observational data
                                against which the errors will be calculated are stored
    reanalysis                  String allowing switch between ERA5 and NCEP2 for the 
                                variables where obs come from atmopsheric reanalysis
                                systems (tas, uas, vas, ua, zg)
    eval_path                   String pointing to the folder that contains pre-computed 
                                error values for 30 CMIP6 models, as well as the default
                                variables, regions and seasons.
    time                        String containing anaylsis period.
    seasons                     List of seasons for which the analysis can be done
    maskfixes                   By default we load a set of ocean basins and 
                                continents that sometimes overlap. This switch
                                fixes this particular dataset. If you read in
                                your own masks, you want to turn this off!
    complexity                  String allowing selection of whether cmip shall be calulated
                                for simple lat/lon boxes (boxes) or continents & ocean
                                basins (regions)
    verbose                     Boolean to activate verbose output


    RETURN:
    '''

    from cmpitool import (cmpisetup, config_cmip6, add_masks, loading_obs, loading_models, calculate_errors,
                          write_errors, read_errors, calculate_fractions, write_fractions, plotting_heatmaps)

    if eval_path == None:
        eval_path='eval/'+reanalysis+'/'

    variable, region, climate_model, siconc, tas, clt, pr, rlut, uas, vas, ua, zg, zos, tos, mlotst, thetao, so = cmpisetup()

    obs = [siconc, tas, clt, pr, rlut, uas, vas, ua, zg, zos, tos, mlotst, thetao, so]

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

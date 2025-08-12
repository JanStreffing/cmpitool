API Reference
=============

This section provides detailed documentation for all the components of CMPITool.

Core Functionality
----------------

cmpitool
^^^^^^^^

.. code-block:: python

   def cmpitool(model_path, models, eval_models=None, out_path='output/', obs_path='obs/' , reanalysis='ERA5', 
                eval_path=None, time='198912-201411', seasons=['MAM', 'JJA', 'SON', 'DJF'], 
                maskfixes=True, use_for_eval=False, complexity='boxes', verbose=False, biasmaps=False, biasmap_limits=None)

The main function of CMPITool that performs climate model performance analysis.

Parameters:
   - **model_path** (*str*): Path pointing towards the output of your model, preprocessed to be read in by CMPITool
   - **models** (*list*): List of climate model objects to be evaluated via CMPITool
   - **eval_models** (*list*, optional): List of climate model objects used as reference for evaluation. By default this is set to None, which results in a set of 30 CMIP6 being used
   - **out_path** (*str*, optional): String pointing to the folder in which results will be stored
   - **obs_path** (*str*, optional): String pointing to the folder in which observational data against which the errors will be calculated are stored
   - **reanalysis** (*str*, optional): String allowing switch between ERA5 and NCEP2 for the variables where obs come from atmospheric reanalysis systems (tas, uas, vas, ua, zg)
   - **eval_path** (*str*, optional): String pointing to the folder that contains pre-computed error values for 30 CMIP6 models, as well as the default variables, regions and seasons
   - **time** (*str*, optional): String containing analysis period
   - **seasons** (*list*, optional): List of seasons for which the analysis can be done
   - **maskfixes** (*bool*, optional): By default we load a set of ocean basins and continents that sometimes overlap. This switch fixes this particular dataset. If you read in your own masks, you want to turn this off
   - **use_for_eval** (*bool*, optional): Set to True if the models being processed should be used as reference for evaluation in future runs
   - **complexity** (*str*, optional): String allowing selection of whether CMPI shall be calculated for simple lat/lon boxes ('boxes') or continents & ocean basins ('regions')
   - **verbose** (*bool*, optional): Boolean to activate verbose output
   - **biasmaps** (*bool*, optional): Boolean to activate bias map plots
   - **biasmap_limits** (*dict*, optional): Dictionary of fixed plot limits for bias maps using variable names as keys and float values as limits. If not provided, limits will be calculated dynamically based on data standard deviation

Returns:
   None. Results are saved to the specified output directory.

cmpisetup
^^^^^^^^^

.. code-block:: python

   def cmpisetup(reanalysis='ERA5')

This function provides classes and the default set of variable objects to facilitate configuration of CMPITool.

Parameters:
   - **reanalysis** (*str*, optional): String allowing switch between ERA5 and NCEP2 for the variables where obs come from atmospheric reanalysis systems (tas, uas, vas, ua, zg)

Returns:
   - **variable** (*class*): Class for creating variable objects
   - **region** (*class*): Class for creating region objects
   - **climate_model** (*class*): Class for creating climate model objects
   - **siconc, tas, clt, pr, rlut, uas, vas, ua, zg, zos, mlotst, thetao, so** (*variable objects*): Predefined variable objects for common climate variables

Classes
-------

variable
^^^^^^^

.. code-block:: python

   class variable:
       def __init__ (self, name, obs, depths, domain='mixed', active=True)

Class for defining climate variables for analysis.

Parameters:
   - **name** (*str*): Name of the variable (must match CMOR naming conventions)
   - **obs** (*str*): Name of the observation dataset to use for this variable
   - **depths** (*list*): List of depth/height levels to analyze
   - **domain** (*str*, optional): Domain of the variable ('mixed', 'land', or 'ocean')
   - **active** (*bool*, optional): Whether to include this variable in the analysis

region
^^^^^^

.. code-block:: python

   class region:
       def __init__ (self, name, domain, mask=False, active=False)

Class for defining geographical regions for analysis.

Parameters:
   - **name** (*str*): Name of the region
   - **domain** (*str*): Domain of the region ('mixed', 'land', or 'ocean')
   - **mask** (*bool*, optional): Mask data for this region
   - **active** (*bool*, optional): Whether to include this region in the analysis

climate_model
^^^^^^^^^^^

.. code-block:: python

   class climate_model:
       def __init__ (self, name, variables)

Class for defining climate models for evaluation.

Parameters:
   - **name** (*str*): Name of the climate model
   - **variables** (*list*): List of variable objects to analyze for this model

Processing Functions
------------------

add_masks
^^^^^^^^

.. code-block:: python

   def add_masks(regions, verbose)

Adds geographical masks to regions.

loading_obs
^^^^^^^^^^

.. code-block:: python

   def loading_obs(obs, obs_path, seasons, verbose)

Loads observational data for comparison.

loading_models
^^^^^^^^^^^^^

.. code-block:: python

   def loading_models(models, model_path, seasons, time, verbose)

Loads climate model output data for analysis.

calculate_errors
^^^^^^^^^^^^^^^

.. code-block:: python

   def calculate_errors(ds_model, ds_obs, models, regions, seasons, verbose)

Calculates the pointwise absolute error and the mean absolute error between models and observations.

write_errors
^^^^^^^^^^^

.. code-block:: python

   def write_errors(abs_error, mean_error, models, regions, seasons, out_path, use_for_eval, eval_path, verbose)

Writes error statistics to CSV files.

read_errors
^^^^^^^^^^

.. code-block:: python

   def read_errors(obs, eval_models, regions, seasons, out_path, eval_path, n_implemented_var, verbose)

Reads previously calculated error statistics from CSV files.

calculate_fractions
^^^^^^^^^^^^^^^^^

.. code-block:: python

   def calculate_fractions(models, regions, seasons, mean_error, eval_error_mean, verbose)

Calculates performance fractions comparing model errors against reference model errors.

write_fractions
^^^^^^^^^^^^^

.. code-block:: python

   def write_fractions(error_fraction, models, regions, seasons, out_path, verbose)

Writes performance fractions to CSV files.

Visualization Functions
---------------------

plotting_heatmaps
^^^^^^^^^^^^^^^

.. code-block:: python

   def plotting_heatmaps(models, regions, seasons, obs, error_fraction, cmpi, out_path, verbose)

Generates heatmap visualizations of model performance.

plotting_biasmaps
^^^^^^^^^^^^^^^

.. code-block:: python

   def plotting_biasmaps(ds_model, ds_obs, models, seasons, obs, out_path, verbose, biasmap_limits=None)

Generates spatial maps showing model biases relative to observations.

Parameters:
   - **ds_model** (*OrderedDict*): Dictionary containing loaded model data
   - **ds_obs** (*OrderedDict*): Dictionary containing loaded observational data
   - **models** (*list*): List of climate model objects to be evaluated
   - **seasons** (*list*): List of seasons to be evaluated
   - **obs** (*list*): List of variable objects for which observations will be loaded
   - **out_path** (*str*): Path to directory where output files will be stored
   - **verbose** (*bool*): Whether to print detailed information during execution
   - **biasmap_limits** (*dict*, optional): Dictionary with variable names as keys and float values representing fixed plot limits. If provided, these fixed limits will be used instead of dynamically calculated limits based on data standard deviation

Configuration Functions
---------------------

config_cmip6
^^^^^^^^^^

.. code-block:: python

   def config_cmip6(climate_model, obs)

Configures the default set of 30 CMIP6 models used for evaluation.

Advanced Usage Examples
---------------------

Example 1: Basic Analysis
^^^^^^^^^^^^^^^^^^^^^^^

.. code-block:: python

   from cmpitool import cmpitool, cmpisetup
   
   # Setup
   variable, region, climate_model, siconc, tas, clt, pr, rlut, uas, vas, ua, zg, zos, mlotst, thetao, so = cmpisetup()
   
   # Define models
   models = [
       climate_model(name='YOUR-MODEL', variables=[tas, pr, rlut])
   ]
   
   # Run analysis
   cmpitool(
       model_path='/path/to/your/data/',
       models=models,
       verbose=True
   )

Example 2: Custom Regions
^^^^^^^^^^^^^^^^^^^^^^^

.. code-block:: python

   from cmpitool import cmpitool, cmpisetup
   
   # Setup
   variable, region, climate_model, siconc, tas, clt, pr, rlut, uas, vas, ua, zg, zos, mlotst, thetao, so = cmpisetup()
   
   # Define custom regions
   custom_regions = [
       region(name='My_Region1', domain='land'),
       region(name='My_Region2', domain='ocean')
   ]
   
   # Define models
   models = [
       climate_model(name='YOUR-MODEL', variables=[tas, pr])
   ]
   
   # Run analysis with custom regions
   cmpitool(
       model_path='/path/to/your/data/',
       models=models,
       regions=custom_regions,
       verbose=True
   )

Example 3: Custom Evaluation Models
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

.. code-block:: python

   from cmpitool import cmpitool, cmpisetup
   
   # Setup
   variable, region, climate_model, siconc, tas, clt, pr, rlut, uas, vas, ua, zg, zos, mlotst, thetao, so = cmpisetup()
   
   # Define evaluation models
   eval_models = [
       climate_model(name='EVAL-MODEL-1', variables=[tas, pr]),
       climate_model(name='EVAL-MODEL-2', variables=[tas, pr])
   ]
   
   # Define models to evaluate
   models = [
       climate_model(name='TEST-MODEL', variables=[tas, pr])
   ]
   
   # Run analysis with custom evaluation models
   cmpitool(
       model_path='/path/to/your/data/',
       models=models,
       eval_models=eval_models,
       verbose=True
   )

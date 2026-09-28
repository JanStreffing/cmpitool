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
   - **models** (*list*): List of ``Model`` objects to be evaluated via CMPITool
   - **eval_models** (*list*, optional): List of ``Model`` objects used as reference for evaluation. By default this is set to None, which results in a set of 30 CMIP6 being used
   - **out_path** (*str*, optional): String pointing to the folder in which results will be stored
   - **obs_path** (*str*, optional): String pointing to the folder in which observational data against which the errors will be calculated are stored
   - **reanalysis** (*str*, optional): String allowing switch between ERA5 and NCEP2 for the variables where obs come from atmospheric reanalysis systems (tas, uas, vas, ua, zg)
   - **eval_path** (*str*, optional): String pointing to the folder that contains pre-computed error values for 30 CMIP6 models, as well as the default variables, regions and seasons
   - **time** (*str*, optional): String containing analysis period
   - **seasons** (*list*, optional): List of seasons for which the analysis can be done
   - **maskfixes** (*bool*, optional): By default we load a set of ocean basins and continents that sometimes overlap. This switch fixes this particular dataset. If you read in your own masks, you want to turn this off
   - **use_for_eval** (*bool*, optional): Set to True if the models being processed should be used as reference for evaluation in future runs
   - **complexity** (*str*, optional): String allowing selection of whether CMPI shall be calculated for simple lat/lon boxes ('boxes') or continents & ocean basins ('regions')
   - **verbose** (*bool*, optional): Log the details of every step, not only the progress. Messages go to the ``cmpitool`` logger; a handler printing them is added only if the caller has not configured logging
   - **biasmaps** (*bool*, optional): Boolean to activate bias map plots
   - **biasmap_limits** (*dict*, optional): Colour ranges for the bias maps by variable name, overriding ``Variable.default_limit``. A value of None gives a range of 3 standard deviations of the bias

Returns:
   The error fractions as an xarray DataArray (model, field, season, region), where a field is a variable at one level such as ``'thetao/100m'``. Results are also saved to the output directory.

Variables and models
--------------------

.. code-block:: python

   from cmpitool import VARIABLES, Variable, Model, Region, make_variables

VARIABLES
^^^^^^^^^

The variables cmpitool knows, by name, in the order of the reference files: siconc, tas, clt, pr, rlut, uas, vas, ua, zg, zos, mlotst, thetao, so. ``make_variables(reanalysis)`` returns the same set with the observations of tas, uas, vas, ua and zg taken from ``'ERA5'`` or ``'NCEP2'``; ``cmpitool()`` does this itself from its ``reanalysis`` argument.

Variable
^^^^^^^^

.. code-block:: python

   Variable(name, obs, depths, domain='mixed', label=None, default_limit=None)

Parameters:
   - **name** (*str*): CMOR short name, also the first part of the file names
   - **obs** (*str*): Observational dataset, the second part of the obs file names
   - **depths** (*list*): Levels, as they appear in the file names
   - **domain** (*str*, optional): ``'oce'`` for ocean variables, which get no value over land regions; ``'mixed'`` otherwise
   - **label** (*str*, optional): Replaces the level in the heatmap row name, e.g. ``'st. dev. '`` for zos
   - **default_limit** (*float*, optional): Bias-map colour range, in the units of the variable. None gives 3 standard deviations of the bias

Model
^^^^^

.. code-block:: python

   Model(name, variables='all')

Parameters:
   - **name** (*str*): Model name, the middle part of its file names
   - **variables**: ``'all'``, or a list of variable names or ``Variable`` objects, e.g. ``Model('MY-MODEL', ['tas', 'pr'])``

Region
^^^^^^

.. code-block:: python

   Region(name, domain, mask=None, active=False)

Parameters:
   - **name** (*str*): Name of a box, ocean basin or continent known to ``add_masks``
   - **domain** (*str*): ``'land'``, ``'ocean'`` or ``'mixed'``
   - **mask**, **active**: filled in by ``add_masks``

Processing Functions
------------------

add_masks
^^^^^^^^

.. code-block:: python

   def add_masks(regions, maskfixes=True)
   def build_masks(maskfixes=True)

``build_masks`` returns the masks of all boxes, ocean basins and continents on the 2 degree grid as one boolean DataArray ``(region, lat, lon)`` with the region names as coordinate. The boxes are defined in ``BOXES``, the regions and their domains in ``REGION_DOMAINS``, and the presets for ``complexity`` in ``COMPLEXITIES``. ``add_masks`` attaches the mask of each ``Region`` by name.

loading_obs
^^^^^^^^^^

.. code-block:: python

   def loading_obs(obs, obs_path, seasons)

Loads observational data for comparison.

loading_models
^^^^^^^^^^^^^

.. code-block:: python

   def loading_models(models, model_path, seasons, time)

Loads climate model output data for analysis.

calculate_errors
^^^^^^^^^^^^^^^

.. code-block:: python

   def calculate_errors(ds_model, ds_obs, models, regions, obs, seasons)

Calculates the pointwise absolute error and the mean absolute error between models and observations.

write_errors
^^^^^^^^^^^

.. code-block:: python

   def write_errors(mean_error, models, regions, seasons, out_path, use_for_eval, eval_path)

Writes error statistics to CSV files.

read_errors
^^^^^^^^^^

.. code-block:: python

   def read_errors(obs, eval_models, regions, seasons, eval_path)

Reads previously calculated error statistics from CSV files.

calculate_fractions
^^^^^^^^^^^^^^^^^

.. code-block:: python

   def calculate_fractions(models, regions, obs, seasons, mean_error, eval_error_mean)

Calculates performance fractions comparing model errors against reference model errors.

write_fractions
^^^^^^^^^^^^^

.. code-block:: python

   def write_fractions(error_fraction, models, regions, seasons, out_path)

Writes performance fractions to CSV files.

Visualization Functions
---------------------

plotting_heatmaps
^^^^^^^^^^^^^^^

.. code-block:: python

   def plotting_heatmaps(models, regions, seasons, obs, error_fraction, cmpi, out_path)

Generates heatmap visualizations of model performance.

plotting_biasmaps
^^^^^^^^^^^^^^^

.. code-block:: python

   def plotting_biasmaps(ds_model, ds_obs, models, seasons, obs, out_path, biasmap_limits=None)

Generates spatial maps showing model biases relative to observations.

Parameters:
   - **ds_model** (*OrderedDict*): Dictionary containing loaded model data
   - **ds_obs** (*OrderedDict*): Dictionary containing loaded observational data
   - **models** (*list*): List of climate model objects to be evaluated
   - **seasons** (*list*): List of seasons to be evaluated
   - **obs** (*list*): List of variable objects for which observations will be loaded
   - **out_path** (*str*): Path to directory where output files will be stored
   - **biasmap_limits** (*dict*, optional): Colour ranges by variable name, overriding ``Variable.default_limit``. None gives a range of 3 standard deviations of the bias

Configuration Functions
---------------------

config_cmip6
^^^^^^^^^^

.. code-block:: python

   def config_cmip6()

Configures the default set of 30 CMIP6 models used for evaluation.

Advanced Usage Examples
---------------------

Example 1: Basic Analysis
^^^^^^^^^^^^^^^^^^^^^^^

.. code-block:: python

   from cmpitool import cmpitool, Model

   # Define models
   models = [
       Model('YOUR-MODEL', ['tas', 'pr', 'rlut'])
   ]
   
   # Run analysis
   cmpitool(
       model_path='/path/to/your/data/',
       models=models,
       verbose=True
   )

Example 2: Choosing the Regions
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

.. code-block:: python

   from cmpitool import cmpitool, Model

   # complexity selects a preset list of regions:
   #   'boxes'     arctic, northmid, tropics, nino34, southmid, antarctic (default)
   #   'boxes_all' the boxes plus glob and innertropics
   #   'regions'   six ocean basins and eight continents
   #   'all'       all of the above
   cmpitool(
       model_path='/path/to/your/data/',
       models=[Model('YOUR-MODEL', ['tas', 'pr'])],
       complexity='regions',
       verbose=True
   )

Example 3: Custom Evaluation Models
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

.. code-block:: python

   from cmpitool import cmpitool, Model

   # Define evaluation models
   eval_models = [
       Model('EVAL-MODEL-1', ['tas', 'pr']),
       Model('EVAL-MODEL-2', ['tas', 'pr'])
   ]
   
   # Define models to evaluate
   models = [
       Model('TEST-MODEL', ['tas', 'pr'])
   ]
   
   # Run analysis with custom evaluation models
   cmpitool(
       model_path='/path/to/your/data/',
       models=models,
       eval_models=eval_models,
       verbose=True
   )

Tutorial
********

This tutorial provides a comprehensive walkthrough for using CMPITool to evaluate climate model performance.

Prerequisites
============

Before starting this tutorial, ensure you have:

1. Installed CMPITool successfully (see :doc:`quickstart`)
2. Processed your model data according to CMPITool's requirements
3. Access to the observational datasets (or use the ones provided)

Complete Workflow
===============

Step 1: Setup the Environment
----------------------------

First, ensure you've activated your cmpitool environment:

.. code-block:: bash

   conda activate cmpitool

Step 2: Prepare Your Data
------------------------

Your model data must be in the correct format for CMPITool. See :doc:`how_to` for details on preprocessing.

The file naming convention is crucial:

.. code-block:: text

   ${variable}_${modelname}_${timeperiod}_${level}_${season}.nc

For example:
   
.. code-block:: text

   tas_YOUR-MODEL_198912-201411_surface_DJF.nc
   pr_YOUR-MODEL_198912-201411_surface_JJA.nc

Step 3: Create an Analysis Script
--------------------------------

Create a Python script (or Jupyter notebook) with the following structure:

.. code-block:: python

   # Import required modules
   from cmpitool import cmpitool, Model

   # Define the path to your processed model data
   model_path = '/path/to/your/processed/model/data/'

   # The models to analyze, each with every variable cmpitool evaluates
   models = [
       Model('YOUR-MODEL-1'),
       Model('YOUR-MODEL-2')
   ]

   # Run the analysis
   cmpitool(
       model_path=model_path,
       models=models,
       out_path='output/',  # Where results will be saved
       obs_path='obs/',     # Path to observation data
       reanalysis='ERA5',   # Choose reanalysis dataset
       time='198912-201411', # Analysis period
       seasons=['DJF', 'JJA'], # Which seasons to analyze
       complexity='boxes',  # Analysis complexity level
       verbose=True,        # Print detailed output
       biasmaps=True        # Generate bias maps
   )
   
   # Bias maps use each variable's default colour range (Variable.default_limit),
   # for example 5 K for tas and 5 mm/day for pr. Override some of them by
   # variable name, in the units of the variable; None gives a range of 3
   # standard deviations of the bias.
   own_limits = {
       'tas': 3.0,         # Surface air temperature (K)
       'pr': 2.0/86400,    # Precipitation (kg m-2 s-1): 2 mm/day
       'zos': None,        # Sea surface height: 3 standard deviations
   }

   cmpitool(
       model_path=model_path,
       models=models,
       out_path='output_own_limits/',
       biasmaps=True,
       biasmap_limits=own_limits
   )

Step 4: Run the Analysis
-----------------------

Execute your script:

.. code-block:: bash

   python your_analysis_script.py

The tool will:
1. Load your model data and observations
2. Calculate errors for each variable, region, and season
3. Compare against the evaluation models
4. Generate output files and visualizations

Step 5: Interpret the Results
---------------------------

After running the analysis, check your output directory for:

1. **CSV Files**: Containing raw error values and performance fractions
2. **Heatmap Plots**: Visualizing model performance across variables and regions
3. **Bias Maps**: Showing spatial patterns of model biases

Understanding heatmap plots:
^^^^^^^^^^^^^^^^^^^^^^^^^^^

.. code-block:: text

   # Color interpretation
   
   Blue colors (CMPI < 1.0):  Your model performs better than the evaluation models average
   White colors (CMPI ≈ 1.0):  Your model performs similar to the evaluation models average
   Red colors (CMPI > 1.0):  Your model performs worse than the evaluation models average

The overall CMPI value represents the performance across all variables, regions, and seasons, where lower values indicate better performance.

Example: Analyzing Results for a Specific Region
==============================================

Let's say you're particularly interested in model performance in the Arctic region:

.. code-block:: python

   # Focus on Arctic analysis
   from cmpitool import cmpitool, Model

   models = [
       Model('YOUR-MODEL')
   ]
   
   # Run the analysis for the latitude boxes, which include the Arctic (60N-90N);
   # complexity='regions' gives the Arctic basin instead
   cmpitool(
       model_path='/path/to/your/data/',
       models=models,
       complexity='boxes',
       seasons=['DJF'],  # Winter season focus
       verbose=True,
       biasmaps=True
   )

Advanced Use Cases
================

Comparing Against Your Own Experiments
------------------------------------

If you want to evaluate a model against your own experiment instead of CMIP6:

.. code-block:: python

   # First run for reference model
   reference_model = [Model('REFERENCE-MODEL')]
   
   cmpitool(
       model_path='/path/to/reference/data/',
       models=reference_model,
       use_for_eval=True,  # Copy its errors to eval/ERA5/ as a reference
       verbose=True
   )
   
   # Then run for your test model using the reference
   test_model = [Model('TEST-MODEL')]
   
   cmpitool(
       model_path='/path/to/test/data/',
       models=test_model,
       eval_models=reference_model,  # Use your reference model
       verbose=True
   )

A Model That Does Not Output Every Variable
-------------------------------------------

Evaluate every variable a model provides. Only when a run cannot provide some of them, list the ones it has. An atmosphere-only (AMIP) run, for example, has prescribed sea ice and sea-surface temperature and no ocean, so it has none of siconc, zos, mlotst, thetao and so:

.. code-block:: python

   amip_run = Model('YOUR-AMIP-RUN', ['tas', 'clt', 'pr', 'rlut', 'uas', 'vas', 'ua', 'zg'])

   cmpitool(
       model_path='/path/to/your/amip/data/',
       models=[amip_run],
       verbose=True
   )

Its heatmap leaves the rows of the missing variables empty, and its CMPI is the mean over the variables it has.

This concludes the tutorial. For more advanced usage and detailed parameter descriptions, refer to the API documentation.

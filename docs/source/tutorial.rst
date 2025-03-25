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
   from cmpitool import cmpitool, cmpisetup

   # Initialize variables, regions, and model classes
   variable, region, climate_model, siconc, tas, clt, pr, rlut, uas, vas, ua, zg, zos, tos, mlotst, thetao, so = cmpisetup()

   # Define the path to your processed model data
   model_path = '/path/to/your/processed/model/data/'

   # Define which models and variables to analyze
   models = [
       climate_model(name='YOUR-MODEL-1', variables=[tas, pr, rlut, uas, vas]),
       climate_model(name='YOUR-MODEL-2', variables=[tas, pr, rlut, uas, vas, zg])
   ]

   # Optional: Specify custom regions
   # For example, to focus on a specific ocean basin:
   custom_region = region(name='Custom_Region', domain='ocean')

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
   from cmpitool import cmpitool, cmpisetup
   
   variable, region, climate_model, siconc, tas, clt, pr, rlut, uas, vas, ua, zg, zos, tos, mlotst, thetao, so = cmpisetup()
   
   # Create a model list with Arctic-relevant variables
   models = [
       climate_model(name='YOUR-MODEL', variables=[siconc, tas, uas, vas])
   ]
   
   # Run analysis with focus on Arctic region
   cmpitool(
       model_path='/path/to/your/data/',
       models=models,
       # Use custom region list focusing on Arctic
       regions=[region(name='arctic', domain='mixed')],
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
   reference_model = [climate_model(name='REFERENCE-MODEL', variables=[tas, pr, uas, vas])]
   
   cmpitool(
       model_path='/path/to/reference/data/',
       models=reference_model,
       use_for_eval=True,  # Mark this as reference for evaluation
       verbose=True
   )
   
   # Then run for your test model using the reference
   test_model = [climate_model(name='TEST-MODEL', variables=[tas, pr, uas, vas])]
   
   cmpitool(
       model_path='/path/to/test/data/',
       models=test_model,
       eval_models=reference_model,  # Use your reference model
       eval_path='output/',  # Where reference model results were saved
       verbose=True
   )

This concludes the tutorial. For more advanced usage and detailed parameter descriptions, refer to the API documentation.

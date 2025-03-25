How to
******

Cite this tool
==============

If you use CMPITool in your research, please cite:

.. code-block:: text

   Streffing, J. (2022). CMPITool: A Python framework for Climate Model Performance Indexing.
   https://github.com/JanStreffing/cmpitool
   https://doi.org/10.5281/zenodo.xxxxxxx

And the original methodology paper:

.. code-block:: text

   Reichler, T., & Kim, J. (2008). How Well Do Coupled Models Simulate Today's Climate?
   Bulletin of the American Meteorological Society, 89(3), 303-312.
   https://doi.org/10.1175/BAMS-89-3-303

Preprocess data for cmpitool
============================

As a first time user, for non-CMORized model output, preparing the raw output for use in cmpitool will likely be the largest up-front time cost. Cmpitool is deliberatly kept simple with regards to its ability to load model and observational data. It does not possess a smart data loader that can deal with a large varity in input formats. Your input data thus has to adhere to a strict but easy to understand rule set:

- Data is provided in one file netcdf file per variable, model, timeperiod, level/depth, and season.
- The file name format is: ``${variable}_${modelname}_${timeperiod}_${level}_${season}.nc``. Example: ``pr_EC-Earth3_198912-201411_surface_DJF.nc``
- Variable names and units have to follow the CMOR standard. 
- Masked regions must use a recognized NAN value.
- The format as output by cdo griddes is:

.. code-block:: Bash

    gridtype  = lonlat
    gridsize  = 16380
    xsize     = 180
    ysize     = 91
    xname     = lon
    xlongname = "longitude"
    xunits    = "degrees_east"
    yname     = lat
    ylongname = "latitude"
    yunits    = "degrees_north"
    xfirst    = 0
    xinc      = 2
    yfirst    = -90
    yinc      = 2

It is up to the tool user to generate a script which turns the raw model output into the input for cmpitool. You can find a number of example script for CMORized and a handful for non-CMORized raw output in the subfolder ``preprocessing_examples``.

Evaluate against your own experiment(s)
=======================================

To evaluate your experiment(s) against your own set of eval_models, rather than the default cmpi6 set, follow these steps:

1. For the experiment(s) that you want to evaluate against, run the analysis the the additional argument ``use_for_eval=True``, e.g. ``cmpitool(model_path, models, use_for_eval=True)``
2. Set the ``models`` from step 1. as ``eval_models`` and define a new ``models`` dictionary for the experiments that you want to evaluate.
3. Run the tool again with ``cmpitool(model_path, models, eval_models)``.

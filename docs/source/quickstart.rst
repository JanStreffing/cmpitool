Step by step
************

Conda package:
==============
Into a clean environment run:

..  code-block:: bash

  conda install cmpitool

..

PyPi package:
=============
Into a clean environment run:

..  code-block:: bash

  pip install cmpitool

..

Editable mode (github):
=======================

- Obtain the source code: ``git clone https://github.com/JanStreffing/cmpitool/``
- Create a conda environment containing the neccessary libraries: ``conda env create -f environment.yaml``
- Activate the conda environment via: ``conda activate cmpitool``
- Install with pip in editable mode: ``pip install -e .``

Run your first analysis:
========================

- Prepare your model output by following the `guide to preprocessing <how_to.rst#preprocess-data-for-cmpitool>`_
- Open the ``example.py`` and/or integrate cmpitool into your existing python script/notebook. 
- Or copy ``example.yaml``, set your paths and models, and run ``cmpitool run example.yaml``.
- Configure cmpitool with ``Model('YOUR-MODEL')``, which evaluates every variable, and the optional arguments of ``cmpitool()``.
- You can now run an analysis against CMIP6 model performance.

Understanding the Output:
========================

CMPITool generates several types of output:

1. **Error CSV Files**: Located in your specified output directory, these files contain the raw error values for each model, variable, region, and season.

2. **Fraction CSV Files**: These show the performance of your models relative to the evaluation models (by default, 30 CMIP6 models).

3. **Heatmap Plots**: Visualize model performance across variables and regions. Values below 1.0 indicate better performance than the average of the evaluation models.

4. **Bias Maps** (optional): Spatial maps showing the difference between your model and observations for each variable and season.

Example Output Interpretation:
-----------------------------

.. code-block:: text

   # Example CMPI value interpretation
   
   CMPI = 0.8: Your model performs 20% better than the evaluation models average
   CMPI = 1.0: Your model performs the same as the evaluation models average
   CMPI = 1.2: Your model performs 20% worse than the evaluation models average

Understanding Error Metrics:
---------------------------

For each variable in each region and season, CMPITool:

1. Calculates the absolute error (model minus observation)
2. Computes an area-weighted mean of the absolute error
3. Compares this error to the same error from evaluation models
4. Produces a normalized index where lower is better

Example Analysis Script:
=======================

Here's a minimal example script:

.. code-block:: python

   from cmpitool import cmpitool, Model

   # Specify model data path
   model_path = '/path/to/your/processed/model/data/'
   
   # The models to analyze, each with every variable cmpitool evaluates
   models = [
       Model('SAME_EXPERIMENT_NAME_AS_SET_DURING_PREPROCESSING')
   ]
   
   # Run analysis
   cmpitool(model_path, models, verbose=True, biasmaps=True)

This will analyze your model against the default set of 30 CMIP6 models for all variables.

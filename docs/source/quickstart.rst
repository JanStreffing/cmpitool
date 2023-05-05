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

- Prepare your model output by following the `guide to preprocessing <how_to.rst#Preprocess data for cmpitool>`_
- Open the ``example.py`` and/or integrate cmpitool into your existing python script/notebook. 
- Configure cmpitool using cmpisetup and the optional arguments for cmpitool.  
- You can now run an analysis against CMIP6 model performance.


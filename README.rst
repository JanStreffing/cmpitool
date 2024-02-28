.. image:: https://readthedocs.org/projects/cmpitool/badge/?version=latest
    :target: https://cmpitool.readthedocs.io/en/latest/?badge=latest
    :alt: Documentation Status

Installation Guide for CMPITool
================================

Obtain Source Code
-------------------
Clone the CMPITool repository from GitHub:

.. code-block:: shell

    git clone https://github.com/JanStreffing/cmpitool/

Create Conda Environment
------------------------
Navigate into the CMPITool directory and create a Conda environment containing the necessary libraries using the provided environment.yaml file:

.. code-block:: shell

    cd cmpitool
    conda env create -f environment.yaml

Activate Conda Environment
--------------------------
Activate the newly created Conda environment named "cmpitool":

.. code-block:: shell

    conda activate cmpitool

Install in Editable Mode
-------------------------
Install CMPITool in editable mode using pip:

.. code-block:: shell

    pip install -e .

Once installation is complete, you can start using CMPITool. For more info that that, check out the documentation at https://cmpitool.readthedocs.io/

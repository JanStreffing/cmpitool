Method
******

CMPITool compares the error of a model with the mean error of a set of reference models, by default 30 CMIP6 models. It does this for each variable, level, region and season, and summarises the ratios in one number, the CMPI.

Error
=====

For a model :math:`m`, a field :math:`v` (a variable at one level), a region :math:`r` and a season :math:`s`, the error is the area-weighted mean absolute difference between the model climatology :math:`x_m` and the observed climatology :math:`o` on the common 2 degree grid:

.. math::

   E_{m,v,r,s} = \frac{\sum_{i} w_{r,i} \, |x_{m,v,s,i} - o_{v,s,i}|}{\sum_{i} w_{r,i}},
   \qquad w_{r,i} = \mathrm{mask}_{r,i} \cos(\varphi_i)

The sum runs over the grid points :math:`i` where the difference is defined, :math:`\varphi_i` is their latitude, and :math:`\mathrm{mask}_{r,i}` is 1 inside the region and 0 outside. Ocean variables have no value in land regions.

Error fraction
==============

The error is divided by the mean error of the reference models that provide the field:

.. math::

   f_{m,v,r,s} = \frac{E_{m,v,r,s}}{\frac{1}{N_v} \sum_{n=1}^{N_v} E_{n,v,r,s}}

A fraction below 1 means the model is closer to the observations than the average reference model, above 1 further away. The fractions are dimensionless, which makes variables with different units comparable. They are written to ``frac/<model>_fraction.csv`` and shown in the heatmap.

CMPI
====

The CMPI of a model is the mean of its fractions with one weight per variable. The fractions of each variable :math:`k` are averaged first, over its levels, the regions and the seasons, and these means are averaged over the variables the model provides:

.. math::

   \mathrm{CMPI}_m = \frac{1}{K_m} \sum_{k=1}^{K_m} \overline{f_{m,k}}

So ``thetao`` and ``so``, with three levels each, count as much as ``tas``. Fractions that are not defined, such as ocean variables in land regions, are left out of the means.

Relation to Reichler and Kim (2008)
===================================

Normalising the error of a model by the errors of an ensemble of reference models follows Reichler and Kim (2008), `How Well Do Coupled Models Simulate Today's Climate? <https://doi.org/10.1175/BAMS-89-3-303>`_. Their index is different: it uses squared errors divided by the interannual variance of the observations. CMPITool uses mean absolute errors of seasonal climatologies, divided by the reference-ensemble mean, which needs only the climatologies of models and observations.

Comparability
=============

CMPI values depend on the observations, the region masks, the reference models and the version of CMPITool. Values from CMPITool 2.0.0 are not comparable with 1.x, whose latitude boxes left out the grid rows at ±30° and ±60° and the column at 0°E, and whose CMPI gave every field the same weight. Each reference file records the observations and masks it was made with, and a run refuses reference files that do not match (see :doc:`how_to`).

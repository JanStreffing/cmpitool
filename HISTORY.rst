=======
History
=======

1.3.1 (unreleased)
------------------

Bug fixes; ERA5 results are unchanged. Tracked in #62.

* ``reanalysis='NCEP2'`` now loads the NCEP2 observations. Since the library conversion in 2022, ``cmpitool()`` read ERA5 files for tas, uas, vas, ua and zg while dividing by the NCEP2 references. The size-1 ``level`` dimension of the NCEP2 files is squeezed on load.
* ``maskfixes=False`` now has an effect; it was never passed to ``add_masks``.
* ``cmpitool()`` creates its output folders and returns ``error_fraction``.
* Figures are closed after saving. The loaders keep only the named variable.
* Bias maps print the area-weighted signed bias, MAE and RMSD with cos(lat) weights, as the index does. The value labelled bias was a mean absolute deviation with unnormalised sqrt(cos(lat)) weights.
* Regression tests and CI.
* ``setup.py`` and ``__init__.py`` say 1.3.1; tags v1.2 and v1.3 were made with 1.1.2 in the source.

1.1.2 (2025-04-15)
------------------

* Fixed issue #27: Added explicit version constraint for netCDF4 dependency to ensure it's properly installed

1.1.1 (2025-04-15)
------------------

* Version bump for official release with all fixes

1.1.0 (2025-04-15)
------------------

* Added fixed biasmap plot limits option to enable consistent visualizations across model runs
* Updated documentation to reflect new feature

0.1.5 (2023-12-08)
------------------
* Test for conda installation
* Includes sphinx found on https://cmpitool.readthedocs.io/en/documentation/

0.1.1 (2022-12-08)
------------------

* Fixing a number of pip and conda package bugs

0.1.0 (2022-12-06)
------------------

* First pre-release on through github.

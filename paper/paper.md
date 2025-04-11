---
title: 'Climate Model Performance Index (CMPI) toolbox'
tags:
  - Python
  - climate
  - model
  - performance
  - evaluation
  - tuning
  - scorecards
authors:
  - name: Jan Streffing
    orcid: 0000-0001-9515-3322
    affiliation: "1, 2"
  - name: Tido Semmler
    orcid: 0000-0002-2254-4901
    affiliation: "1, 3"
affiliations:
 - name: Alfred Wegener Institute, Helmholtz Centre for Polar and Marine Research, Am Handelshafen 12, 27570 Bremerhaven, Germany
   index: 1
 - name: Constructor University Bremen, Campus Ring 1, 28759 Bremen, Germany
   index: 2
 - name: Met Éireann, Meteorological Centre, 65–67 Glasnevin Hill, Dublin 9, D09 Y921
   index: 3
date: 11 April 2025
bibliography: references.bib
---

# Summary

Cmpitool is a python library for quantifying the ability of climate models to represent the mean present day earth climate i.e. the Climate Model Performance Index (CMPI). The tool allows for comparison of 14 key climate variables with observational estimates. Furthermore, it can compare the skill of a model to represent the Earth's mean climate with either 30 widely used climate models, or in scorecard mode to those of any previously analysed climate model. It can be used during climate model development & tuning and as a release evaluation tool. Cmpitool comes with the necessary observational/reanalysis and climate model data for quick deployment or integration into existing evaluation toolboxes. The package is installed via pip or conda and can be obtained either through pypi (https://pypi.org/project/cmpitool/), github (https://github.com/JanStreffing/cmpitool/).

# Statement of need

Climate Model Performance Indices (CMPI) after @HowWellDoCoupledModelsSimulateTodaysClimate have been used by many researches as a convenient first glance to identify strengths and weaknesses of their own and other climate models [@AFrameworkforEvaluatingClimateModelPerformanceMetrics]. These indices thus help to direct the focus of research and model development. With cmpitool, a climate model's ability to reproduce the observed conditions and reanalysis data for 14 key climate variables is put in relation to the abilities of either 30 widely used Coupled Model Intercomparison Project Phase 6 (CMIP6) models, or to any climate model previously evaluated with cmpitool. The former can help gauge performance in comparison to the wider community, while the latter enables feature by feature based continuous evaluation during development. In particular, the latter feature is not present in previous implementations of CMPI tools. The practice of using scorecards has been long established in the Numerical Weather Prediction (NWP) community [@haiden2018evaluation; @p20469], but seldom used for climate models thus far.

![Usage of cmpitool for the generation of scorecards on an AWI-CM3 development version in order to provide an overview of the impact of model changes made between model versions. The example illustrates the impact of improving the lack of supercooled liquid water in the modelling of convective cold-air outbreaks in storm tracks [@forbes2016reducing] on features as far removed as Arctic deep ocean salinity. Values <1 (>1) indicate improved (degraded) agreement with observational or reanalysis data relative to a reference version of the model. The utilised reference was the model version immediately preceding the introduction of the model improvement.](vs_prev_version.png)

The toolbox is written as a number of flexible python3 functions using an object-oriented approach. It has been used in its current form by @gmd-15-6399-2022, and in a shell, FORTRAN90, GRADS and CDO based predecessor version by [@https://doi.org/10.1029/2019MS002009; @https://doi.org/10.1002/qj.3674]. A small subset of the functionality of cmpitool is already in widespread use as an ncl recipe script inside ESMValTool [@gmd-13-3383-2020], based on [@https://doi.org/10.1029/2007JD008972] and [@gmd-8-733-2015]. In particular, the evaluation of atmospheric climate performance compared to a fixed set of older Coupled Model Intercomparison Project Phase 5 (CMIP5) models, for 3 regions (global, northern hemisphere, southern hemisphere), and two seasons (boreal winter and summer) is available in ESMValTool [@gmd-13-3383-2020]. In addition to these options, cmpitool allows for evaluation of both atmosphere and ocean, including some surface variances, for arbitrary regions, with up to four seasons and in comparison to either the more recent CMIP6 models or previously analysed runs. The evaluation results in an easy to interpret table, as shown in Figure below:

![Using cmpitool to compare the simulated climate skill of one the CMIP6 models, EC-Earth3, relative to observational estimates with the average skill of 30 CMIP6 models. Values <1 (>1) indicate improved (degraded) agreement with observational or reanalysis data. EC-Earth shows performance almost universally above community average performance, with the exception of the Southern Ocean and Antarctica, in good agreement with the known model biases from in depth analysis [@gmd-15-2973-2022].](EC-Earth3.png)

Furthermore cmpitool is not fixed in the selection of reference models. Any run(s) once evaluated with the tool can subsequently be used as reference for further simulations. This opens up the possibility to use cmpitool during model development and tuning (parameter space estimation for observationally poorly constrained parameters[@TheArtandScienceofClimateModelTuning]), by setting e.g. the previous, frozen version of a model as the performance baseline, and observing the changes with each newly incorporated model development or tuning setting. In this mode the tool functions in a similar fashion to the scorecard system employed by the European Centre for Medium-Range Weather Forecasts (ECMWF) to characterize the performance of each new version of their operational numerical weather prediction system [@p20469; @80865].

Climate model tuning is the process by which individually developed and improved sections of the model are tuned towards a sensible overall simulated climate, analog to the tuning of instruments in an orchestra. Here, cmpitool can guard against a common pitfall of model tuning, whereby an intended improvement in one climate variable can, through nonlinarities and a complex causal web of effects, lead to unintended and overlooked degradation elsewhere. Because model tuning is typically a manual or at best semi-automatic process, the quality of the final result depends in large part on the breadth and depth of knowledge of the scientist doing the tuning. Tool assistance, such a provided by cmiptool and its scorecards can help guide and streamline the process.

The second major upgrade compared to previous algorithms is the inclusion of up to date observational estimates. The tool itself ships with observational estimates for 14 key climate variables. Wherever possible, the observational estimates cover the period from December 1989 till November 2014, constituting the last 25 years of full seasons covered by CMIP6. Provided sufficiently reliable observational estimates are available, the toolbox could also be applied to evaluation of past climate states.

Extension of the tool comes in three complexity steps. For the scorecard mode, researchers will be easily able to add their new variables and define any interest region they wish to focus on. For the CMIP6 mode such extensions are also possible, but require more work, as the new variable or region has to be added for each model. Finally, users can add a completely new evaluation dataset, for example HighResMIP [@gmd-9-4185-2016] or the upcomping CMIP7. The integration of cmpitool into existing evaluation libraries will also be possible, as the tool is using a widely used data analysis language and provides a clear interface.

# Acknowledgements

We acknowledge the teams behind the observational datasets ERA5, GPCP, HadISST2, MODIS, NOAA-LSA, OSI-SAF and PIOMAS, as well as all the modelling centers that contributed to CMIP6. We thank Jonathan Day, Daniel Balting, Tobias Weigel, Lauren Schippers and Paul Gierz for valuable discussions and usage testing. JS was supported by the Helmholtz Climate Initiative REKLIM. TS was supported by the projects ESM and PalMod. Computational resources and data storage were provided by the Alfred Wegener Institute computing and data centre.

# References

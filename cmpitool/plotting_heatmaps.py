import logging
from pathlib import Path

import matplotlib.pyplot as plt
import pandas as pd
import seaborn as sns

from .parallel import run_jobs

__all__ = ['plotting_heatmaps']

logger = logging.getLogger(__name__)


def _plot_heatmap(model_name, table, cmpi_value, path):
    '''Draw and save the heatmap of one model.'''
    fig, ax = plt.subplots(figsize=(table.shape[1]/1.5, table.shape[0]/1.5))
    fig.patch.set_facecolor('white')
    ax.set_facecolor('white')
    sns.heatmap(table, vmin=0.5, vmax=1.5, center=1, annot=True, fmt='.2f', cmap="PiYG_r", cbar=False, linewidths=1, ax=ax)
    plt.setp(ax.get_xticklabels(), rotation=90, fontsize=14)
    plt.setp(ax.get_yticklabels(), rotation=0, ha='right', fontsize=14)
    ax.set_title(model_name+' CMPI: '+str(round(cmpi_value,3)), fontsize=18)

    fig.savefig(path, dpi=300, bbox_inches='tight')
    plt.close(fig)


def plotting_heatmaps(models, regions, seasons, obs, error_fraction, cmpi, out_path, workers=None):
    '''
    AUTHORS:
    Jan Streffing		2022-11-30	Split off from main tool
    Jan Streffing		2026-09-29	Table straight from the fraction array
    Jan Streffing		2026-09-29	Heatmaps drawn in parallel processes

    DESCRIPTION:
    This function plots a heatmap of the error fractions per model, with one row per
    variable and level and one column per region and season.
    
    INPUT:
    models         		List of models to be evaluated
    regions                     List of regions for which the analysis will be done
    seasons                     List of seasons to be evaluated
    obs                         List of variables objects for which observations
                                will be loaded
    error_fraction              DataArray (model, field, season, region) of the ratio of
                                your model's error to the evaluation models' mean error
    cmpi                        List of climate model overall performance indices
                                one per model
    out_path                    String pointing to the folder in which results will be stored
    workers                     Number of processes drawing heatmaps; None for the CPUs
                                available, at most 8; 1 draws them in this process

    RETURN:
    '''


    logger.info('Plotting heatmap(s)')

    # One row per field (variable and level), one column per region and season
    rows = [var.row_label(depth) for var in obs for depth in var.depths]
    columns = [region.name+' '+seas for region in regions for seas in seasons]

    jobs = []
    for model in models:
        # Fields the model does not provide are NaN and stay empty
        values = error_fraction.sel(model=model.name).transpose('field', 'region', 'season').values
        table = pd.DataFrame(values.reshape(len(rows), len(columns)), index=rows, columns=columns)
        logger.debug('%s heatmap shape: %s', model.name, table.shape)
        jobs.append((model.name, table, cmpi[model.name], Path(out_path) / 'plot' / (model.name+'.png')))

    run_jobs(_plot_heatmap, jobs, workers)

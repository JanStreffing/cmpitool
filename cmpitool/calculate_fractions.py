import logging

import xarray as xr

__all__ = ['calculate_fractions']

logger = logging.getLogger(__name__)


def calculate_fractions(models, regions, obs, seasons, mean_error, eval_error_mean):
    '''
    Calculate performance fractions comparing model errors against reference models.

    This function computes the Climate Model Performance Index (CMPI) fractions by
    dividing model error metrics by the average error of reference models. These
    fractions indicate relative model performance where values below 1.0 indicate
    better performance than the reference models average.

    Parameters
    ----------
    models : list
        List of Model objects being evaluated
    regions : list
        List of Region objects evaluated
    obs : list
        List of Variable objects, the fields of mean_error
    seasons : list
        List of seasons evaluated (e.g., ['DJF', 'MAM', 'JJA', 'SON'])
    mean_error : xarray.DataArray
        Mean absolute error (model, field, season, region), see calculate_errors
    eval_error_mean : dict
        Mean error of the reference models by (variable, region, level, season),
        see read_errors

    Returns
    -------
    error_fraction : xarray.DataArray
        mean_error divided by the reference error, same dimensions. NaN for ocean
        variables in land regions, and for fields a model does not provide.
        Values below 1.0 indicate better than average performance.

    Notes
    -----
    The CMPI value is calculated following the methodology of Reichler and Kim (2008),
    where the error of a model is divided by the mean error of reference models for
    the same variable, region, and season. This normalization allows for comparison
    across different variables with different physical units.

    AUTHORS:
    Jan Streffing               2022-11-30      Split off from main tool
    Jan Streffing               2026-09-29      One division of labelled arrays
    '''


    logger.info('Calculating ratio of current model error to evaluation model error')

    fields = [(var, depth) for var in obs for depth in var.depths]
    reference = xr.DataArray(
        [[[eval_error_mean[var.name, region.name, depth, seas] for region in regions] for seas in seasons]
         for var, depth in fields],
        coords={'field': mean_error.field.values, 'season': list(seasons), 'region': [region.name for region in regions]},
        dims=('field', 'season', 'region'))

    # Ocean variables have no meaningful error over land regions
    ocean_field = xr.DataArray([var.domain == 'oce' for var, depth in fields], dims='field', coords={'field': mean_error.field.values})
    land_region = xr.DataArray([region.domain == 'land' for region in regions], dims='region',
                               coords={'region': [region.name for region in regions]})

    error_fraction = (mean_error / reference).where(~(ocean_field & land_region))
    logger.debug('%s', error_fraction)
    return error_fraction.transpose('model', 'field', 'season', 'region')

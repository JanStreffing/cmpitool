"""bias_statistics on fields where the answer is known."""

import numpy as np
import pytest
import xarray as xr

from cmpitool.plotting_biasmaps import bias_statistics

LAT = np.arange(-90, 92, 2.0)
LON = np.arange(0, 360, 2.0)
WEIGHTS = np.cos(np.deg2rad(LAT))[:, None] * np.ones(LON.size)


def field(values):
    return xr.DataArray(np.broadcast_to(values, (LAT.size, LON.size)).astype(float),
                        coords={"lat": LAT, "lon": LON}, dims=("lat", "lon"))


def test_constant_offset():
    obs = field(10.0)
    assert bias_statistics(obs + 2.0, obs) == pytest.approx((2.0, 2.0, 2.0), rel=1e-12)


def test_signed_bias_cancels_but_mae_does_not():
    # +1 in the north, -1 in the south, 0 on the equator: the bias cancels,
    # MAE and RMSD are the weighted share of grid points off the equator.
    diff = np.sign(LAT)[:, None]
    obs = field(5.0)
    bias, mae, rmsd = bias_statistics(obs + field(diff), obs)
    expected = (WEIGHTS * np.abs(diff)).sum() / WEIGHTS.sum()
    assert bias == pytest.approx(0.0, abs=1e-12)
    assert mae == pytest.approx(expected, rel=1e-12)
    assert rmsd == pytest.approx(np.sqrt(expected), rel=1e-12)


def test_weights_are_cos_lat_not_sqrt():
    # A difference of 1 only north of 60N: its share of the area is the
    # cos(lat) weight of those rows, which sqrt(cos(lat)) would overstate.
    diff = (LAT > 60).astype(float)[:, None]
    obs = field(0.0)
    bias, mae, rmsd = bias_statistics(obs + field(diff), obs)
    expected = (WEIGHTS * diff).sum() / WEIGHTS.sum()
    assert bias == pytest.approx(expected, rel=1e-12)
    assert mae == pytest.approx(expected, rel=1e-12)


def test_nan_points_are_left_out():
    obs = field(0.0).where(field(LAT[:, None]) >= 0)  # NaN in the south, like land for an ocean variable
    bias, mae, rmsd = bias_statistics(field(-3.0), obs)
    assert (bias, mae, rmsd) == pytest.approx((-3.0, 3.0, 3.0), rel=1e-12)


def test_size_one_dimensions_of_obs_files_are_ignored():
    # Obs are loaded with their size-1 time dimension, model fields without it.
    obs = field(1.0).expand_dims(time=[0])
    assert bias_statistics(field(1.5), obs) == pytest.approx((0.5, 0.5, 0.5), rel=1e-12)

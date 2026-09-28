"""Shared fixtures for the cmpitool regression tests.

The regression cases run the full pipeline on a synthetic model: the shipped
observations plus a fixed, smooth perturbation. Nothing is downloaded or
stored besides the expected outputs in tests/golden/.
"""

from pathlib import Path

import numpy as np
import pytest
import xarray as xr

from cmpitool import cmpisetup

REPO = Path(__file__).resolve().parent.parent
OBS_PATH = REPO / "obs"
GOLDEN = Path(__file__).resolve().parent / "golden"

SYNTH = "SYNTH"
TIME = "198912-201411"
SEASONS = ["MAM", "JJA", "SON", "DJF"]


def pytest_addoption(parser):
    parser.addoption(
        "--update-golden",
        action="store_true",
        default=False,
        help="Overwrite tests/golden/ with the outputs of this run instead of comparing.",
    )


@pytest.fixture(scope="session")
def update_golden(request):
    return request.config.getoption("--update-golden")


@pytest.fixture(scope="session")
def setup():
    """Classes and variable objects as cmpisetup() returns them, by name."""
    variable, region, climate_model, *variables = cmpisetup()
    return {
        "variable": variable,
        "region": region,
        "climate_model": climate_model,
        "variables": {v.name: v for v in variables},
    }


def _perturb(field, season_index):
    """Add a smooth pattern scaled to 20 % of the field's spatial std.

    Computed in float64 so that the errors do not depend on float32
    summation order in whatever xarray/numpy version runs the test.
    """
    field = field.astype("float64")
    lat = np.deg2rad(field["lat"])
    lon = np.deg2rad(field["lon"])
    pattern = 0.3 + np.sin(2 * lat) * np.cos(lon + season_index * np.pi / 6)
    scale = 0.2 * float(field.std(skipna=True))
    return field + scale * pattern


@pytest.fixture(scope="session")
def synth_model_path(tmp_path_factory, setup):
    """Write SYNTH model files for every variable, level and season."""
    path = tmp_path_factory.mktemp("synth_input")
    for var in setup["variables"].values():
        for depth in var.depths:
            for k, seas in enumerate(SEASONS):
                src = OBS_PATH / f"{var.name}_{var.obs}_{depth}_{seas}.nc"
                with xr.open_dataset(src) as ds:
                    ds = ds.load()
                ds[var.name] = _perturb(ds[var.name], k)
                ds.to_netcdf(path / f"{var.name}_{SYNTH}_{TIME}_{depth}_{seas}.nc")
    return path

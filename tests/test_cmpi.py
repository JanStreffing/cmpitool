"""The CMPI gives every variable the same weight."""

import numpy as np
import xarray as xr

from cmpitool import Model, Region, write_fractions


def test_each_variable_counts_once(tmp_path):
    (tmp_path / "frac").mkdir()
    model = Model("M", ["tas", "thetao"])
    fields = ["tas/surface", "thetao/10m", "thetao/100m", "thetao/1000m"]
    # thetao has three levels, one without a value; tas has one
    values = np.array([1.0, 3.0, 3.0, np.nan]).reshape(1, 4, 1, 1)
    error_fraction = xr.DataArray(values, dims=("model", "field", "season", "region"),
                                  coords={"model": ["M"], "field": fields, "season": ["DJF"], "region": ["arctic"]})

    cmpi = write_fractions(error_fraction, [model], [Region("arctic", "mixed")], ["DJF"], str(tmp_path))

    # (1 + 3) / 2, not (1 + 3 + 3) / 3 as with one weight per field
    assert cmpi["M"] == 2.0
    assert (tmp_path / "frac" / "M_fraction.csv").read_text().splitlines()[-1] == "CMPI global yearly 2.0"

"""Local check: rerun CMIP6 models and reproduce their reference CSVs in eval/ERA5.

Needs the preprocessed CMIP6 input on levante, so it is not run in CI:

    pytest -m local

Set CMPITOOL_CMIP6_INPUT to use another input directory.
"""

import os
from pathlib import Path

import pytest

from cmpitool import cmpitool, config_cmip6

from conftest import OBS_PATH, REPO, make_out_path
from test_regression import assert_same_table

CMIP6_INPUT = Path(os.environ.get("CMPITOOL_CMIP6_INPUT",
                                  "/work/ab0246/a270092/postprocessing/cmip6_cmpitool"))

pytestmark = [
    pytest.mark.local,
    pytest.mark.skipif(not CMIP6_INPUT.is_dir(), reason=f"{CMIP6_INPUT} not available"),
]


# ACCESS-CM2 has every variable, CIESM lacks siconc, uas, vas and mlotst.
@pytest.mark.parametrize("name, reanalysis", [
    ("ACCESS-CM2", "ERA5"),
    ("CIESM", "ERA5"),
    ("ACCESS-CM2", "NCEP2"),
])
def test_reproduces_reference(name, reanalysis, setup, tmp_path):
    models = [m for m in config_cmip6(setup["climate_model"], list(setup["variables"].values()))
              if m.name == name]
    out = make_out_path(tmp_path)
    eval_path = REPO / "eval" / reanalysis
    # The reference CSVs were written with every region, which is complexity='all'.
    cmpitool(str(CMIP6_INPUT), models, out_path=str(out), obs_path=str(OBS_PATH),
             eval_path=str(eval_path), reanalysis=reanalysis, complexity="all")
    assert_same_table(out / "abs" / f"{name}.csv", eval_path / f"{name}.csv")

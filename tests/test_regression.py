"""Regression tests: the full pipeline must reproduce the stored outputs.

Each case runs cmpitool on the synthetic SYNTH model (see conftest.py) and
compares abs/SYNTH.csv and frac/SYNTH_fraction.csv, including the CMPI row,
with tests/golden/<case>/. Keys must match exactly and in order, values to a
relative 1e-12. Regenerate the stored outputs with

    pytest --update-golden

only when a change is meant to alter results, and say so in the PR.

The xfail tests at the end pin known bugs. They are strict, so the PR that
fixes a bug has to remove its marker.
"""

import shutil
from pathlib import Path

import numpy as np
import pandas as pd
import pytest

import cmpitool as pkg
from cmpitool import cmpitool, config_cmip6, read_errors

from conftest import GOLDEN, OBS_PATH, REPO, SYNTH, make_out_path

EVAL_ERA5 = REPO / "eval" / "ERA5"
KEYS = ["Variable", "Region", "Level", "Season"]

# Name -> keyword arguments for cmpitool(). "eval" and "drop" are handled
# by run_case: a subset of the CMIP6 reference models, and variables left
# out of the SYNTH model.
CASES = {
    "boxes": {"complexity": "boxes"},
    "regions": {"complexity": "regions"},
    "all": {"complexity": "all"},
    # Seasons in the order of the reference CSVs; the reverse order is the
    # xfail test_read_errors_season_order below.
    "seasons_biasmaps": {"complexity": "boxes", "seasons": ["JJA", "DJF"], "biasmaps": True},
    # Reference models that lack variables exercise the skip paths in read_errors.
    "eval_subset": {"complexity": "boxes", "eval": ["ACCESS-CM2", "CIESM", "IITM-ESM", "KIOST-ESM"]},
    # A model without some variables exercises the NaN path of the heatmap.
    "partial_model": {"complexity": "boxes", "drop": ["siconc", "mlotst"]},
    # NCEP2 obs for tas, uas, vas, ua and zg, against the eval/NCEP2 references.
    "ncep2": {"complexity": "boxes", "reanalysis": "NCEP2"},
    # Without the Southern Ocean and Arctic basin fixes in add_masks.
    "regions_nomaskfixes": {"complexity": "regions", "maskfixes": False},
}


def cmip6_models(setup):
    return config_cmip6(setup["climate_model"], list(setup["variables"].values()))


def run_case(case, setup, synth_model_path, out_path):
    kwargs = dict(CASES[case])
    eval_names = kwargs.pop("eval", None)
    drop = kwargs.pop("drop", [])

    variables = [v for name, v in setup["variables"].items() if name not in drop]
    models = [setup["climate_model"](name=SYNTH, variables=variables)]
    if eval_names is not None:
        kwargs["eval_models"] = [m for m in cmip6_models(setup) if m.name in eval_names]

    cmpitool(
        str(synth_model_path),
        models,
        out_path=str(out_path),
        obs_path=str(OBS_PATH),
        eval_path=str(REPO / "eval" / kwargs.get("reanalysis", "ERA5")),
        **kwargs,
    )


def read_table(path):
    df = pd.read_csv(path, sep=" ", dtype={k: str for k in KEYS})
    value_col = df.columns[-1]
    cmpi = df[df["Variable"] == "CMPI"]
    df = df[df["Variable"] != "CMPI"].reset_index(drop=True)
    # write_fractions appends "CMPI global yearly <value>": four fields in a
    # five-column file, so the value lands in the Season column.
    cmpi_value = float(cmpi["Season"].iloc[0]) if len(cmpi) else None
    return df[KEYS], df[value_col].to_numpy(dtype=float), cmpi_value


def assert_same_table(actual, expected):
    keys_a, values_a, cmpi_a = read_table(actual)
    keys_e, values_e, cmpi_e = read_table(expected)
    pd.testing.assert_frame_equal(keys_a, keys_e, obj=f"keys of {actual.name}")
    np.testing.assert_allclose(values_a, values_e, rtol=1e-12, atol=0, equal_nan=True,
                               err_msg=f"values of {actual.name}")
    if cmpi_e is None:
        assert cmpi_a is None
    else:
        np.testing.assert_allclose(cmpi_a, cmpi_e, rtol=1e-12, atol=0, err_msg="CMPI")


@pytest.mark.parametrize("case", list(CASES))
def test_regression(case, setup, synth_model_path, tmp_path, update_golden):
    out = make_out_path(tmp_path)
    run_case(case, setup, synth_model_path, out)

    outputs = [Path("abs") / f"{SYNTH}.csv", Path("frac") / f"{SYNTH}_fraction.csv"]
    assert (out / "plot" / f"{SYNTH}.png").is_file()
    if CASES[case].get("biasmaps"):
        assert any((out / "plot" / "maps").glob(f"{SYNTH}_*.png"))

    if update_golden:
        for rel in outputs:
            dest = GOLDEN / case / rel
            dest.parent.mkdir(parents=True, exist_ok=True)
            shutil.copyfile(out / rel, dest)
        pytest.skip(f"stored outputs for {case} updated")

    for rel in outputs:
        expected = GOLDEN / case / rel
        assert expected.is_file(), f"no stored output {expected}; run pytest --update-golden"
        assert_same_table(out / rel, expected)


# --- Arguments reach the functions that use them ---------------------------

class _Stop(Exception):
    """Raised by spies to end a cmpitool() run once the call of interest is seen."""


def _no_masks(regions, verbose, *args, **kwargs):
    return regions


def test_reanalysis_selects_obs(setup, monkeypatch, tmp_path):
    seen = {}

    def spy(obs, *args, **kwargs):
        seen.update({v.name: v.obs for v in obs})
        raise _Stop

    monkeypatch.setattr(pkg, "add_masks", _no_masks)
    monkeypatch.setattr(pkg, "loading_obs", spy)
    with pytest.raises(_Stop):
        cmpitool(str(tmp_path), [], out_path=str(tmp_path), obs_path=str(OBS_PATH),
                 eval_path=str(REPO / "eval" / "NCEP2"), reanalysis="NCEP2")
    assert {seen[v] for v in ["tas", "uas", "vas", "ua", "zg"]} == {"NCEP2"}


def test_maskfixes_passed(monkeypatch, tmp_path):
    seen = {}

    def spy(regions, verbose, maskfixes=True):
        seen["maskfixes"] = maskfixes
        raise _Stop

    monkeypatch.setattr(pkg, "add_masks", spy)
    with pytest.raises(_Stop):
        cmpitool(str(tmp_path), [], out_path=str(tmp_path), obs_path=str(OBS_PATH),
                 eval_path=str(EVAL_ERA5), maskfixes=False)
    assert seen["maskfixes"] is False


# --- Known bugs ------------------------------------------------------------

def _reference_value(model, variable, region, level, season):
    df = pd.read_csv(EVAL_ERA5 / f"{model}.csv", sep=" ").set_index(KEYS)
    return df.loc[(variable, region, level, season), "AbsMeanError"]


def _read_one_model(setup, seasons):
    region = setup["region"]
    regions = [region(name="arctic", domain="mixed"), region(name="tropics", domain="mixed")]
    eval_models = [m for m in cmip6_models(setup) if m.name == "ACCESS-CM2"]
    return read_errors(list(setup["variables"].values()), eval_models, regions, seasons,
                       "unused/", str(EVAL_ERA5) + "/", 14, False)


def test_read_errors_matches_csv(setup):
    got = _read_one_model(setup, ["JJA", "DJF"])
    for season in ["JJA", "DJF"]:
        assert got["tas", "tropics", "surface", season] == \
            _reference_value("ACCESS-CM2", "tas", "tropics", "surface", season)


@pytest.mark.xfail(strict=True, raises=AssertionError, reason="read_errors assumes the seasons come in CSV order; fixed in PR 4")
def test_read_errors_season_order(setup):
    got = _read_one_model(setup, ["DJF", "JJA"])
    for season in ["JJA", "DJF"]:
        assert got["tas", "tropics", "surface", season] == \
            _reference_value("ACCESS-CM2", "tas", "tropics", "surface", season)

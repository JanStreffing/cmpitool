"""The header of the error CSVs, and read_errors refusing references it does not match."""

import numpy as np
import pytest

from cmpitool import (REGION_DOMAINS, VARIABLES, Model, Region, add_masks, cmpitool, config_cmip6,
                      make_variables, read_errors)
from cmpitool.provenance import mask_hash, read_header

from conftest import OBS_PATH, REPO, SYNTH

EVAL = REPO / "eval"


def _regions(names, maskfixes=True):
    return add_masks([Region(name, REGION_DOMAINS[name]) for name in names], maskfixes)


@pytest.mark.parametrize("reanalysis", ["ERA5", "NCEP2"])
def test_shipped_references_match_the_current_obs_and_masks(reanalysis):
    # Fails when masks or obs change without regenerating eval/.
    masks = {region.name: mask_hash(region.mask) for region in _regions(REGION_DOMAINS)}
    obs = {name: var.obs for name, var in make_variables(reanalysis).items()}
    for path in [EVAL / reanalysis / f"{model.name}.csv" for model in config_cmip6()]:
        header, lines = read_header(path)
        assert lines == 3, path
        assert header["masks"] == {name: masks[name] for name in header["masks"]}, path
        assert header["obs"] == {name: obs[name] for name in header["obs"]}, path


def _read(eval_path, name, regions, obs=None):
    obs = list(VARIABLES.values()) if obs is None else obs
    return read_errors(obs, [Model(name, [])], regions, ["DJF"], eval_path)


def test_matching_masks_are_accepted():
    got = _read(EVAL / "ERA5", "ACCESS-CM2", _regions(["arctic", "Atlantic_Basin"]))
    assert len(got) > 0


def test_other_masks_are_refused():
    with pytest.raises(ValueError, match="another mask for Atlantic_Basin"):
        _read(EVAL / "ERA5", "ACCESS-CM2", _regions(["arctic", "Atlantic_Basin"], maskfixes=False))


def test_other_obs_are_refused():
    with pytest.raises(ValueError, match="tas errors against NCEP2 observations; this run uses ERA5"):
        _read(EVAL / "NCEP2", "ACCESS-CM2", [Region("arctic", "mixed")])


def test_file_without_header_is_refused(tmp_path):
    lines = (EVAL / "ERA5" / "ACCESS-CM2.csv").read_text().splitlines()
    (tmp_path / "OLD.csv").write_text("\n".join(line for line in lines if not line.startswith("#")) + "\n")
    with pytest.raises(ValueError, match="OLD.csv has no header"):
        _read(tmp_path, "OLD", [Region("arctic", "mixed")])


def test_use_for_eval_writes_a_reference_later_runs_accept(synth_model_path, tmp_path):
    out = tmp_path / "out"
    kwargs = dict(out_path=str(out), obs_path=str(OBS_PATH), complexity="boxes", seasons=["DJF"])
    cmpitool(str(synth_model_path), [Model(SYNTH)], eval_path=str(EVAL / "ERA5"), use_for_eval=True, **kwargs)
    reference = out / "eval" / "ERA5" / f"{SYNTH}.csv"
    assert reference.read_text() == (out / "abs" / f"{SYNTH}.csv").read_text()

    # Evaluated against itself, every fraction is 1, up to the summation order of the weighted mean
    fraction = cmpitool(str(synth_model_path), [Model(SYNTH)], eval_models=[Model(SYNTH)],
                        eval_path=str(reference.parent), **kwargs)
    assert np.isfinite(fraction.values).any()
    np.testing.assert_allclose(fraction.values[np.isfinite(fraction.values)], 1.0, rtol=1e-12)

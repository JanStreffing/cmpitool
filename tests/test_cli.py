"""cmpitool run config.yaml"""

import pytest
import yaml

from cmpitool.cli import _models, main, run_config

from conftest import GOLDEN, OBS_PATH, REPO, SYNTH
from test_regression import assert_same_table


def write_config(path, **config):
    path.write_text(yaml.safe_dump(config))
    return path


def test_run_config_reproduces_the_boxes_case(synth_model_path, tmp_path):
    out = tmp_path / "out"
    config = write_config(tmp_path / "config.yaml", model_path=str(synth_model_path), models=[SYNTH],
                          out_path=str(out), obs_path=str(OBS_PATH), eval_path=str(REPO / "eval" / "ERA5"),
                          complexity="boxes")
    main(["run", str(config)])
    for rel in ["abs/SYNTH.csv", "frac/SYNTH_fraction.csv"]:
        assert_same_table(out / rel, GOLDEN / "boxes" / rel)


def test_models_from_names_and_mappings():
    models = _models(["A", {"name": "B", "variables": ["tas", "pr"]}], "models")
    assert [m.name for m in models] == ["A", "B"]
    assert len(models[0].variables) == 13
    assert [v.name for v in models[1].variables] == ["tas", "pr"]
    with pytest.raises(ValueError, match="needs a name"):
        _models([{"variables": ["tas"]}], "models")
    with pytest.raises(ValueError, match="non-empty list"):
        _models([], "models")


def test_unknown_and_missing_keys(tmp_path):
    with pytest.raises(ValueError, match="Unknown keys .*: region"):
        run_config(write_config(tmp_path / "a.yaml", model_path=".", models=["A"], region="arctic"))
    with pytest.raises(ValueError, match="needs models"):
        run_config(write_config(tmp_path / "b.yaml", model_path="."))


def test_example_config_has_only_known_keys():
    import inspect
    from cmpitool import cmpitool

    config = yaml.safe_load((REPO / "example.yaml").read_text())
    assert set(config) <= set(inspect.signature(cmpitool).parameters)
    _models(config["models"], "models")
    _models(config["eval_models"], "eval_models")

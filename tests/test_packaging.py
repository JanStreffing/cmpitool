"""Package metadata and the default data folders."""

from pathlib import Path

import pytest

import cmpitool
from cmpitool.pipeline import _data_path

REPO = Path(__file__).resolve().parent.parent


def test_default_data_folders_are_in_the_checkout(monkeypatch, tmp_path):
    # Independent of the working directory
    monkeypatch.chdir(tmp_path)
    assert _data_path("obs") == REPO / "obs"
    assert _data_path("eval", "NCEP2") == REPO / "eval" / "NCEP2"
    with pytest.raises(FileNotFoundError, match="pass obs_path and eval_path"):
        _data_path("eval", "MERRA2")


def test_version_is_single_sourced():
    text = (REPO / "pyproject.toml").read_text()
    assert 'version = {attr = "cmpitool.__version__"}' in text
    assert not (REPO / "setup.py").exists()
    assert cmpitool.__version__.count(".") >= 1

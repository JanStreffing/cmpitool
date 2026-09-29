"""Variables, models and the CMIP6 reference set."""

import pytest

from cmpitool import VARIABLES, Model, Region, Variable, config_cmip6, make_variables

NAMES = ["siconc", "tas", "clt", "pr", "rlut", "uas", "vas", "ua", "zg", "zos", "mlotst", "thetao", "so"]


def test_variables_in_the_order_of_the_reference_files():
    assert list(VARIABLES) == NAMES


def test_reanalysis_sets_the_obs_of_five_variables():
    ncep2 = make_variables("NCEP2")
    assert {name for name, v in ncep2.items() if v.obs == "NCEP2"} == {"tas", "uas", "vas", "ua", "zg"}
    assert all(v.obs != "NCEP2" for v in VARIABLES.values())


def test_model_variables_by_name_or_all():
    assert [v.name for v in Model("X").variables] == NAMES
    assert [v.name for v in Model("X", "all").variables] == NAMES
    assert Model("X", ["pr", "tas"]).variables == [VARIABLES["pr"], VARIABLES["tas"]]
    custom = Variable("tas", "OTHER", ["surface"])
    assert Model("X", [custom]).variables == [custom]


@pytest.mark.parametrize("variables", [["tas", "tos"], "some"])
def test_model_rejects_unknown_variables(variables):
    with pytest.raises(ValueError):
        Model("X", variables)


def test_row_labels():
    assert VARIABLES["tas"].row_label("surface") == "tas"
    assert VARIABLES["thetao"].row_label("100m") == "100m thetao"
    assert VARIABLES["zos"].row_label("surface") == "st. dev. zos"


def test_pr_limit_is_in_kg_per_m2_per_s():
    # 5 mm/day; the 5.0 in the old example scripts made every pr bias map one colour
    assert VARIABLES["pr"].default_limit == pytest.approx(5 / 86400)


def test_cmip6_models():
    models = config_cmip6()
    assert len(models) == 30 and len({m.name for m in models}) == 30
    missing = {m.name: set(NAMES) - {v.name for v in m.variables} for m in models}
    assert missing["ACCESS-CM2"] == set()
    assert missing["CIESM"] == {"siconc", "uas", "vas", "mlotst"}
    assert missing["IITM-ESM"] == {"siconc", "zos", "mlotst", "thetao", "so"}


def test_region():
    region = Region("arctic", "mixed")
    assert region.mask is None and not region.active


def test_verbose_sets_the_log_level(monkeypatch):
    import logging
    from cmpitool.pipeline import _configure_logging

    logger = logging.getLogger("cmpitool")
    monkeypatch.setattr(logger, "handlers", [])
    _configure_logging(False)
    assert logger.level == logging.INFO
    _configure_logging(True)
    assert logger.level == logging.DEBUG
    # pytest configures the root logger, so no handler of our own is added
    assert logger.handlers == []

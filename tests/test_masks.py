"""Region masks and the region presets."""

import numpy as np
import pytest

from cmpitool import COMPLEXITIES, REGION_DOMAINS, Region, add_masks, build_masks, make_regions

# Grid cells in each mask with the fixes
CELLS = {
    "Atlantic_Basin": 2017, "Pacific_Basin": 3356, "Indian_Basin": 1048, "Arctic_Basin": 1335,
    "Southern_Ocean_Basin": 3038, "Mediterranean_Basin": 59,
    "Asia": 1342, "North_America": 923, "Europe": 367, "Africa": 642, "South_America": 388,
    "Oceania": 11, "Australia": 175, "Antarctica": 1602,
    "glob": 16200, "arctic": 2700, "northmid": 2700, "tropics": 5400, "innertropics": 2700,
    "nino34": 125, "southmid": 2700, "antarctic": 2700,
}


@pytest.fixture(scope="module")
def masks():
    return build_masks(maskfixes=True), build_masks(maskfixes=False)


def test_every_region_has_a_mask_of_the_expected_size(masks):
    fixed, _ = masks
    assert set(fixed.region.values) == set(CELLS) == set(REGION_DOMAINS)
    assert {name: int(fixed.sel(region=name).sum()) for name in CELLS} == CELLS


def test_fixes_change_only_the_atlantic_and_southern_ocean(masks):
    fixed, unfixed = masks
    changed = {name for name in CELLS
               if not np.array_equal(fixed.sel(region=name), unfixed.sel(region=name))}
    assert changed == {"Atlantic_Basin", "Southern_Ocean_Basin"}
    assert int(unfixed.sel(region="Atlantic_Basin").sum()) == 2204
    assert int(unfixed.sel(region="Southern_Ocean_Basin").sum()) == 4680
    # The fixes only remove cells
    for name in changed:
        assert not (fixed.sel(region=name) & ~unfixed.sel(region=name)).any()


def test_latitude_bands_cover_the_globe_once(masks):
    # Before 1.5.0 the rows at +-30, +-60 and the column at 0E were in no box
    fixed, _ = masks
    bands = ["arctic", "northmid", "tropics", "southmid", "antarctic"]
    count = sum(fixed.sel(region=name).astype(int) for name in bands)
    assert (count == 1).all()
    assert fixed.sel(region="glob").all()


def test_add_masks_attaches_masks_by_name():
    regions = add_masks([Region("nino34", "mixed"), Region("Europe", "land")])
    assert all(region.active for region in regions)
    assert [int(region.mask.sum()) for region in regions] == [125, 367]
    with pytest.raises(ValueError, match="No mask for region 'Artic'"):
        add_masks([Region("Artic", "mixed")])


def test_presets():
    assert [r.name for r in make_regions("boxes")] == ["arctic", "northmid", "tropics", "nino34", "southmid", "antarctic"]
    assert [r.name for r in make_regions("all")] == COMPLEXITIES["regions"] + COMPLEXITIES["boxes_all"]
    assert {r.domain for r in make_regions("regions")} == {"ocean", "land"}
    with pytest.raises(ValueError, match="Unknown complexity"):
        make_regions("everything")

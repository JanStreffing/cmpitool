"""Regenerate the CMIP6 references in eval/ERA5 and eval/NCEP2.

Run after a change to the masks, the observations or the error calculation,
then check and commit eval/. Needs the preprocessed CMIP6 input on levante:

    python tests/regenerate_references.py [CMIP6_INPUT] OUT

OUT receives the full cmpitool output of both runs.
"""

import shutil
import sys
from pathlib import Path

from cmpitool import cmpitool, config_cmip6

REPO = Path(__file__).resolve().parent.parent
CMIP6_INPUT = "/work/ab0246/a270092/postprocessing/cmip6_cmpitool"


def regenerate(cmip6_input, out):
    for reanalysis in ["ERA5", "NCEP2"]:
        run = Path(out) / reanalysis
        written = run / "eval" / reanalysis
        models = config_cmip6()
        # The models are their own reference set: use_for_eval writes their
        # files before read_errors reads them, so the old files are not needed.
        cmpitool(str(cmip6_input), models, eval_models=models, out_path=str(run), eval_path=str(written),
                 obs_path=str(REPO / "obs"), reanalysis=reanalysis, complexity="all", use_for_eval=True)
        for model in models:
            shutil.copyfile(written / f"{model.name}.csv", REPO / "eval" / reanalysis / f"{model.name}.csv")


if __name__ == "__main__":
    *cmip6_input, out = sys.argv[1:]
    regenerate(cmip6_input[0] if cmip6_input else CMIP6_INPUT, out)

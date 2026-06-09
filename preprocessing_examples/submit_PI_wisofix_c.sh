#!/bin/bash
#SBATCH --account=ab0246
#SBATCH --partition=compute
#SBATCH --time=08:00:00
#SBATCH --nodes=1
#SBATCH --job-name=cmpi_PI_wisofix_c
#SBATCH --output=preprocess_PI_wisofix_c_%j.out
#SBATCH --error=preprocess_PI_wisofix_c_%j.err

set -e

SCRIPT_DIR=/work/ab0246/a270092/software/cmpitool/preprocessing_examples
PREPROCESS_SCRIPT="${SCRIPT_DIR}/noncmore_preprocess_AWI-ESM2.sh"

ORIGDIR=/work/ba1066/a270107/esm_tools/EXP/PI_wisofix_c/outdata/
OUTDIR=/work/ab0246/a270092/software/cmpitool/input
MODEL_NAME=PI_wisofix_c
DELTMP=0
FIRST_YEAR=5976
LAST_YEAR=6000
GRIDFILE=/work/ab0246/a270092/input/fesom2/core2/core2_griddes_nodes.nc
TMPDIR_LOCAL=/work/ab0246/a270092/software/cmpitool/input/tmpdata_PI_wisofix_c
FESOM_SUFFIX=""

echo "=========================================="
echo "cmpitool preprocessing — PI_wisofix_c"
echo "Job ID:      ${SLURM_JOB_ID}"
echo "origdir:     ${ORIGDIR}"
echo "outdir:      ${OUTDIR}"
echo "model:       ${MODEL_NAME}"
echo "years:       ${FIRST_YEAR}-${LAST_YEAR}"
echo "gridfile:    ${GRIDFILE}"
echo "tmpdir:      ${TMPDIR_LOCAL}"
echo "=========================================="

source ~/loadconda.sh
conda activate cdo19
echo "cdo: $(which cdo) — $(cdo --version 2>&1 | head -1)"

bash "${PREPROCESS_SCRIPT}" \
    "${ORIGDIR}" \
    "${OUTDIR}" \
    "${MODEL_NAME}" \
    "${DELTMP}" \
    "${FIRST_YEAR}" \
    "${LAST_YEAR}" \
    "${GRIDFILE}" \
    "${TMPDIR_LOCAL}" \
    "${FESOM_SUFFIX}"

echo ""
echo "=========================================="
echo "Preprocessing finished"
echo "=========================================="

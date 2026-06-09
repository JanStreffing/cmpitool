#!/bin/bash
#SBATCH --account=ab0246
#SBATCH --partition=compute
#SBATCH --time=08:00:00
#SBATCH --nodes=1
#SBATCH --job-name=preprocess_AWI
#SBATCH --output=preprocess_%j.out
#SBATCH --error=preprocess_%j.err

# Caller script for preprocess_AWI-CM3-XIOS_monthly.sh
# Submits as batch job with required modules

# Check if arguments are provided
if [ $# -lt 6 ]; then
    echo "Usage: sbatch $0 <esm_tools_outdata_dir> <cmpi_input_subdir> <model_name> <first_year> <last_year> <fesom2_gridfile> [delete_tmp] [flux_scale]"
    echo "Example: sbatch $0 /work/ab0246/a270092/runtime/awicm3-v3.2/HIST6/outdata/ /work/ab0995/a270251/software/cmpitool/input 3.2.GAUSSHIST 1989 2014 /work/ab0995/a270251/data/meshes/core2/core2_griddes_nodes.nc true 21600"
    exit 1
fi

# Get script directory and preprocessing script path
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PREPROCESS_SCRIPT="${SCRIPT_DIR}/preprocess_AWI-CM3-XIOS_monthly.sh"

echo "=========================================="
echo "Starting SLURM batch job"
echo "=========================================="
echo "Job ID: ${SLURM_JOB_ID}"
echo "Account: ab0246"
echo "Partition: compute"
echo "Time: 8 hours"
echo "Script: ${PREPROCESS_SCRIPT}"
echo "Arguments: $@"
echo "=========================================="

# Load conda
echo 'Loading modules...'
source /sw/spack-levante/mambaforge-22.9.0-2-Linux-x86_64-kptncbb/etc/profile.d/conda.sh

# Load the conda environment
conda activate base

# Load CDO and NCO modules
module load cdo
module load nco

echo 'Modules loaded successfully.'
echo 'Starting preprocessing script...'
echo ''

# Run the preprocessing script with all arguments
bash ${PREPROCESS_SCRIPT} "$@"

echo ''
echo 'Preprocessing completed.'
echo "=========================================="
echo "Job finished"
echo "=========================================="

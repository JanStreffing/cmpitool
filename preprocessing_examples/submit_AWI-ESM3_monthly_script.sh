#!/bin/bash

# Caller script for preprocess_AWI-CM3-XIOS_monthly.sh
# Allocates resources and loads required modules before execution

# Check if arguments are provided
if [ $# -lt 6 ]; then
    echo "Usage: $0 <esm_tools_outdata_dir> <cmpi_input_subdir> <model_name> <first_year> <last_year> <fesom2_gridfile> [delete_tmp] [flux_scale]"
    echo "Example: $0 /work/ab0246/a270092/runtime/awicm3-v3.2/HIST6/outdata/ /work/ab0995/a270251/software/cmpitool/input 3.2.GAUSSHIST 1989 2014 /work/ab0995/a270251/data/meshes/core2/core2_griddes_nodes.nc true 21600"
    exit 1
fi

# Store the arguments
ARGS="$@"
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PREPROCESS_SCRIPT="${SCRIPT_DIR}/preprocess_AWI-CM3-XIOS_monthly.sh"

echo "=========================================="
echo "Starting SLURM allocation and job execution"
echo "=========================================="
echo "Account: ab0246"
echo "Partition: compute"
echo "Time: 8 hours"
echo "Script: ${PREPROCESS_SCRIPT}"
echo "Arguments: ${ARGS}"
echo "=========================================="

# Allocate resources and run the script
salloc --account=ab0246 --partition=compute --time=08:00:00 --nodes=1 bash -c "
    echo 'Loading modules...'
    
    # Load conda
    source /sw/spack-levante/mambaforge-22.9.0-2-Linux-x86_64-kptncbb/etc/profile.d/conda.sh
    
    # Load the conda environment (adjust the environment name if needed)
    # Assuming a common environment name - adjust if yours is different
    conda activate base
    
    # Load CDO and NCO modules
    module load cdo
    module load nco
    
    echo 'Modules loaded successfully.'
    echo 'Starting preprocessing script...'
    echo ''
    
    # Run the preprocessing script with all arguments
    bash ${PREPROCESS_SCRIPT} ${ARGS}
    
    echo ''
    echo 'Preprocessing completed.'
"

echo "=========================================="
echo "Job finished"
echo "=========================================="

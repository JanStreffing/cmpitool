#!/bin/bash
#SBATCH --job-name=noncmore_preprocess_AWI-ESM2
#SBATCH --partition=smp
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=8
#SBATCH --time=04:30:00
#SBATCH --qos=12h
#SBATCH --mail-type=FAIL
#SBATCH --account=paleodyn.paleodyn
#SBATCH --output=noncmore_preprocess_AWI-ESM2.%j.out
#SBATCH --mem=6000MB

# limit stacksize ... adjust to your programs need
# and core file size
#ulimit -s 204800
#ulimit -c 0

export PATH="/work/ab0246/HPC_libraries/intel-oneapi-compilers/2022.0.1-gcc-11.2.0/openmpi/4.1.2-gcc-11.2.0/bin/:${PATH}"
module load netcdf-c

set -e

./noncmore_preprocess_AWI-ESM2.sh /work/bb1029/a270107/esm_tools/awiesm-2.1-wiso/EXP/PI_CTRL/outdata/ //home/a/a270092/software/cmpitool/input AWI-ESM2 1 5025 5027 /work/ab0246/a270092/input/fesom2/core2/core2_griddes_nodes.nc /home/a/a270092/software/cmpitool/input/tmpdata "01.01"

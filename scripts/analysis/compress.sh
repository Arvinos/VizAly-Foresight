#!/bin/bash

#SBATCH --nodes 4
#SBATCH --ntasks-per-node 2
#SBATCH --partition skylake-gold
#SBATCH --job-name compress

HACC="/projects/exasky/HACC"
BUILD_DIR="/projects/exasky/hoby-projects/cbench/build"

# load modules
source "${HACC}.darwin_setup"

# go to folder 
cd ${BUILD_DIR}

# run
mpirun -np 8 ./CBench ../inputs/hacc/hacc_analysis_compress_non-halo.json

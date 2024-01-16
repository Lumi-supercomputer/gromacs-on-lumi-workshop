#!/bin/bash
#SBATCH --partition=small-g
#SBATCH --account=project_465000934
#SBATCH --reservation=gromacs_thursday
#SBATCH --exclusive
#SBATCH --time=00:10:00
#SBATCH --nodes=1
#SBATCH --gpus-per-node=2
#SBATCH --ntasks-per-node=3

module use /appl/local/csc/modulefiles
module load gromacs/2023.3-gpu
source ${GMXBIN}/lumi-affinity.sh

export OMP_NUM_THREADS=7

srun --cpu-bind=${CPU_BIND} ./select_gpu \
     gmx_mpi mdrun -s stmv \
                   -nb gpu \
                   -pme gpu \
                   -bonded gpu \
                   -update gpu \
                   -nsteps -1 \
                   -maxh 0.017 \
                   -resethway \
                   -notunepme \
                   -npme 1 \
                   -g ex3.1_id${SLURM_JOB_ID}

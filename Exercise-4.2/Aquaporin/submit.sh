#!/bin/bash
#SBATCH --partition=small-g
#SBATCH --account=project_465000934
#SBATCH --reservation=gromacs_thursday
#SBATCH --exclusive
#SBATCH --time=00:10:00
#SBATCH --nodes=4
#SBATCH --gpus-per-node=8
#SBATCH --ntasks-per-node=4

module use /appl/local/csc/modulefiles
module load gromacs/2023.3-gpu
source ${GMXBIN}/lumi-affinity.sh

export OMP_NUM_THREADS=1

export MPICH_GPU_SUPPORT_ENABLED=1
export GMX_ENABLE_DIRECT_GPU_COMM=1
export GMX_FORCE_GPU_AWARE_MPI=1
export GMX_GPU_PME_DECOMPOSITION=1
export GMX_PMEONEDD=1

srun --cpu-bind=${CPU_BIND} ./select_gpu \
     gmx_mpi mdrun -multidir repl_{01..16} \
                   -nb gpu \
                   -pme gpu \
                   -bonded gpu \
                   -update gpu \
                   -nsteps -1 \
                   -maxh 0.1 \
                   -resethway \
                   -notunepme \
                   -npme 0  \
                   -g ex4.2_id${SLURM_JOB_ID}.log

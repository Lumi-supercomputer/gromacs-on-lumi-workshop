#!/bin/bash
#SBATCH --partition=small-g
#SBATCH --account=project_465000934
#SBATCH --reservation=gromacs_thursday
#SBATCH --time=00:10:00
#SBATCH --nodes=1
#SBATCH --gpus-per-node=2
#SBATCH --ntasks-per-node=2
#SBATCH --cpus-per-task=7

module use /appl/local/csc/modulefiles
module load gromacs/2023.3-gpu

export OMP_NUM_THREADS=${SLURM_CPUS_PER_TASK}

export MPICH_GPU_SUPPORT_ENABLED=1
export GMX_ENABLE_DIRECT_GPU_COMM=1
export GMX_FORCE_GPU_AWARE_MPI=1

srun gmx_mpi mdrun -s pme_nvt \
                   -npme 1  \
                   -nb gpu -pme gpu -bonded gpu -update cpu \
                   -g ex3.2_${SLURM_NTASKS}x${OMP_NUM_THREADS}_jID${SLURM_JOB_ID} \
                   -nsteps -1 -maxh 0.017 -resethway -notunepme

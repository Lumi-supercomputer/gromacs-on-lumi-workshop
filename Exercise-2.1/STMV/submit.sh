#!/bin/bash
#SBATCH --partition=small-g
#SBATCH --account=project_465000934
#SBATCH --reservation=gromacs_thursday
#SBATCH --time=00:10:00
#SBATCH --nodes=1
#SBATCH --gpus-per-node=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=7

module use /appl/local/csc/modulefiles
module load gromacs/2023.3-gpu

export OMP_NUM_THREADS=${SLURM_CPUS_PER_TASK}

srun gmx_mpi mdrun -s stmv \
                   -nb gpu \
                   -pme gpu \
                   -bonded gpu \
                   -update cpu \
                   -nsteps -1 \
                   -maxh 0.017 \
                   -resethway \
                   -notunepme \
                   -g ex2.1_id${SLURM_JOB_ID}

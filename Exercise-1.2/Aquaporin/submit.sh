#!/bin/bash
#SBATCH --partition=FIXME
#SBATCH --account=project_465000934
#SBATCH --reservation=FIXME
#SBATCH --time=00:10:00
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=7
#SBATCH --gpus-per-node=1

module use /appl/local/csc/modulefiles
module load gromacs/2023.3-gpu

export OMP_NUM_THREADS=${SLURM_CPUS_PER_TASK}

srun gmx_mpi mdrun -s aquaporin \
                   -nsteps -1 \
                   -maxh 0.017 \
                   -resethway \
                   -notunepme \
                   -g ex1.2_id${SLURM_JOB_ID}

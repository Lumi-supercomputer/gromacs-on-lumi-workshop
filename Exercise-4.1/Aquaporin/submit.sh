#!/bin/bash
#SBATCH --partition=small-g
#SBATCH --account=project_465000934
#SBATCH --reservation=gromacs_thursday
#SBATCH --exclusive
#SBATCH --time=00:10:00
#SBATCH --nodes=1
#SBATCH --gpus-per-node=8
#SBATCH --ntasks-per-node=32

module use /appl/local/csc/modulefiles
module load gromacs/2023.3-gpu
source ${GMXBIN}/lumi-affinity.sh

export OMP_NUM_THREADS=1

num_multi=32

srun --cpu-bind=${CPU_BIND} ./select_gpu \
     gmx_mpi mdrun -multidir sim_{01..32} \
                   -nb gpu -pme gpu -bonded gpu -update gpu \
                   -g ex4.1_${SLURM_NNODES}N_multi${num_multi}_jID${SLURM_JOB_ID} \
                   -nsteps -1 -maxh 0.017 -resethway -notunepme

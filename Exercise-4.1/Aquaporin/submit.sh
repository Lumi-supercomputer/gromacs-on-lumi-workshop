#!/bin/bash
#SBATCH --partition=FIXME
#SBATCH --account=project_465000934
#SBATCH --reservation=FIXME
#SBATCH --exclusive
#SBATCH --time=00:10:00
#SBATCH --nodes=1
#SBATCH --gpus-per-node=8
#SBATCH --ntasks-per-node=32

module use /appl/local/csc/modulefiles
module load gromacs/2023.3-gpu
source ${GMXBIN}/lumi-affinity.sh

export OMP_NUM_THREADS=1

srun --cpu-bind=${CPU_BIND} ./select_gpu \
     gmx_mpi mdrun -multidir repl_{01..32} \
                   -nb gpu \
                   -pme gpu \
                   -bonded gpu \
                   -update gpu \
                   -nsteps -1 \
                   -maxh 0.1 \
                   -resethway \
                   -notunepme \
                   -g ex4.1_id${SLURM_JOB_ID}.log

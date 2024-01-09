#!/bin/bash
#SBATCH --job-name=stmv
#SBATCH --partition=standard-g
#SBATCH --account=project_462000002
#SBATCH --output=stmv.out
#SBATCH --error=stmv.err 
#SBATCH --time=00:10:00
#SBATCH --nodes=1
#SBATCH --gpus-per-node=8
#SBATCH --ntasks-per-node=8

module use /appl/local/csc/modulefiles
module load gromacs/2023.3-gpu
#module load gromacs/2023.1-heffte

export OMP_NUM_THREADS=7


srun gmx_mpi mdrun -s pme_nvt.tpr -bonded cpu -nb gpu -pme cpu -update cpu -g output.log -nsteps -1 -notunepme

#!/bin/bash -l
#SBATCH --job-name=aqp          # Job name
#SBATCH --output=aqp.out        # Name of stdout output file
#SBATCH --error=aqp.err         # Name of stderr error file
#SBATCH --partition=standard    # Partition (queue) name
#SBATCH --nodes=1               # Total number of nodes 
#SBATCH --ntasks-per-node=16    # Number of mpi tasks per node
#SBATCH --cpus-per-task=8       # Number of cores (threads) per task
#SBATCH --time=00:10:00         # Run time (d-hh:mm:ss)
#SBATCH --account=project_462000002  # Project for billing


# Load modules

module use /appl/local/csc/modulefiles
module load gromacs/2023.3

# Set the number of threads based on --cpus-per-task
export OMP_NUM_THREADS=$SLURM_CPUS_PER_TASK

# Launch MPI code 
srun gmx_mpi mdrun -s topol.tpr -pin on -ntomp $SLURM_CPUS_PER_TASK -g bench_${SLURM_NNODES}N_${SLURM_NTASKS}x${SLURM_CPUS_PER_TASK}.log -nsteps 25000 -resethway

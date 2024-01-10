#!/bin/bash
#SBATCH --job-name=stmv
#SBATCH --partition=standard-g
#SBATCH --account=project_462000002
#SBATCH --output=stmv.out
#SBATCH --error=stmv.err 
#SBATCH --time=00:05:00
#SBATCH --nodes=2
#SBATCH --gpus-per-node=8
#SBATCH --ntasks-per-node=8

module use /appl/local/csc/modulefiles
module load gromacs/2023.3-gpu
#module load gromacs/2023.1-heffte

export OMP_NUM_THREADS=7

#export MPICH_GPU_SUPPORT_ENABLED=1
#export GMX_ENABLE_DIRECT_GPU_COMM=1
#export GMX_FORCE_GPU_AWARE_MPI=1
#export GMX_GPU_PME_DECOMPOSITION=1
#export GMX_PMEONEDD=1

cat << EOF > select_gpu
#!/bin/bash

export ROCR_VISIBLE_DEVICES=\$((SLURM_LOCALID%SLURM_GPUS_PER_NODE))
exec \$*
EOF

chmod +x ./select_gpu

CPU_BIND="mask_cpu:fe000000000000,fe00000000000000"
CPU_BIND="${CPU_BIND},fe0000,fe000000"
CPU_BIND="${CPU_BIND},fe,fe00"
CPU_BIND="${CPU_BIND},fe00000000,fe0000000000"

srun --cpu-bind=$CPU_BIND ./select_gpu gmx_mpi mdrun -s pme_nvt.tpr -bonded gpu -nb gpu -pme gpu -update gpu -g output.log -npme 1

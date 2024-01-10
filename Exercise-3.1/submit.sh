#!/bin/bash
#SBATCH --partition=small-g
#SBATCH --exclusive
#SBATCH --account=project_462000002
#SBATCH --time=00:10:00
#SBATCH --nodes=1
#SBATCH --gpus-per-node=2
#SBATCH --ntasks-per-node=2

module use /appl/local/csc/modulefiles
module load gromacs/2023.3-gpu

export OMP_NUM_THREADS=7

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

srun --cpu-bind=$CPU_BIND ./select_gpu gmx_mpi mdrun -s pme_nvt.tpr -bonded cpu -nb gpu -pme gpu -update cpu -g ex3.1_${SLURM_JOB_ID}.log -npme 1 -nsteps -1 -maxh 0.1 -resethway -notunepme

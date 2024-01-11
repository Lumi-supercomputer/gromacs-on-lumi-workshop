#!/bin/bash
#SBATCH --partition=standard-g
#SBATCH --account=project_462000002
#SBATCH --time=00:05:00
#SBATCH --nodes=1
#SBATCH --gpus-per-node=4
#SBATCH --ntasks-per-node=4

module use /appl/local/csc/modulefiles
module load gromacs/2023.3-gpu

export OMP_NUM_THREADS=7

cat << EOF > select_gpu
#!/bin/bash

export ROCR_VISIBLE_DEVICES=\$SLURM_LOCALID
exec \$*
EOF

chmod +x ./select_gpu

CPU_BIND="mask_cpu:fe000000000000,fe00000000000000"
CPU_BIND="${CPU_BIND},fe0000,fe000000"
CPU_BIND="${CPU_BIND},fe,fe00"
CPU_BIND="${CPU_BIND},fe00000000,fe0000000000"


srun --cpu-bind=$CPU_BIND ./select_gpu gmx_mpi mdrun -s pme_nvt.tpr -g ex3.1_id${SLURM_JOB_ID}.log -nb gpu -bonded gpu -update gpu -pme gpu -npme 1 -nsteps -1 -notunepme -maxh 0.1 -resethway

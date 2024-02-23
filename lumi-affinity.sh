#!/bin/bash

# This wrapper is used to set appropriate CPU-GPU binding on LUMI.
# It is used in Exercises 3.3, 4.1 and 4.2, and assumed to be in
# ${GMXBIN} directory. Please modify the path as necessary.

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

**System: Aquaporin**

No. of atoms: 109992

1. Replicas 01 - 16 provided in the folder ensemble_inputs was used for AWH simulation
2. Simulations were performed using 1, 2 and 4 complete GPU nodes such that each simulation task was executed on a 0.5, 1 and 2 GCDs respectively
3. Direct GPU communication was enabled
4. All force tasks (`-bonded`, `-nb`, `-pme`) and update were carried out on GPU
5. GPU utilization can be monitored with `srun --overlap --pty --jobid=<jobid> $SHELL` and then `watch rocm-smi`
   * In practice, the average GPU utilization was estimated by logging the GPU use of a single device once a second during the job

**Performance Analysis**

| Tasks per GCD |  OMP_NUM_THREADS   | Average Performance (ns/day) | Aggregate Performance (ns/day) | GPU utilization (%) | Job ID  |
|---------------|--------------------|------------------------------|--------------------------------|---------------------|---------|
|       2       |        1           |        84.452                |      1351.25                   |  80                 | 5735012 |
|       1       |        1           |       126.194                |      2019.11                   |  90                 | 5734125 |
|     0.5       |        1           |       126.843                |      2029.38                   |  60                 | 5735055 |

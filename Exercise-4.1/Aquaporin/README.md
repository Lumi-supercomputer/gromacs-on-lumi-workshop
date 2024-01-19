**System: Aquaporin**

No. of atoms: 109992

1. Replicas 01-32 provided in the folder `ensemble_inputs` is used for AWH simulation
2. Simulations are performed using 1 complete GPU node such that 1 to 4 trajectories are run on a single GCD (8-32 ensemble members)
3. All force tasks (`-bonded`, `-nb`, `-pme`) and update were carried out on GPU
4. GPU utilization can be monitored with `srun --overlap --pty --jobid=<jobid> $SHELL` and then `watch rocm-smi`
   * In practice, the average GPU utilization was estimated by logging the GPU use of a single device once a second during the job

**Performance Analysis**

| Tasks per GCD |  OMP_NUM_THREADS   | Average Performance (ns/day) | Aggregate Performance (ns/day) | GPU utilization (%) | Job ID  |
|---------------|--------------------|------------------------------|--------------------------------|---------------------|---------|
|       1       |        7           |  159.761                     |   1278.08                      |  60                 | 5774705 |
|       2       |        3           |  81.362                      |   1301.79                      |  70                 | 5774710 |
|       3       |        2           |  60.472                      |   1451.32                      |  80                 | 5774758 |
|       4       |        1           |  50.994                      |   1631.81                      |  90                 | 5774760 |

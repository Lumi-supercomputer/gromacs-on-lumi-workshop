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
|       1       |        7           |  160.777                     |  1286.22                       |  60                 | 5777503 |
|       2       |        3           |  83.914                      |  1342.62                       |  70                 | 5777509 |
|       3       |        2           |  61.448                      |  1474.74                       |  80                 | 5777527 |
|       4       |        1           |  51.256                      |  1640.17                       |  90                 | 5777531 |

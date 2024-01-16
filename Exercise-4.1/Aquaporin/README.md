**System: Aquaporin**

No. of atoms: 109992

1. Replicas 01-32 provided in the folder `ensemble_inputs` is used for AWH simulation
2. Simulations are performed using 1 complete GPU node such that 1 to 4 trajectories are run on a single GCD (8-32 ensemble members)
3. All force tasks (`-bonded`, `-nb`, `-pme`) and update were carried out on GPU
4. GPU utilization can estimated with `srun --overlap --pty --jobid=<jobid> $SHELL` and then `watch rocm-smi`
   * In practice, the average GPU utilization was calculated by logging the GPU use of a single device once a second during roughly 30 seconds in the middle of the job

**Performance Analysis**

| Tasks per GCD |  OMP_NUM_THREADS   | Average Performance (ns/day) | Aggregate Performance (ns/day) | GPU utilization (%) | Job ID  |
|---------------|--------------------|------------------------------|--------------------------------|---------------------|---------|
|       1       |        7           |       160.505                |      1284.04                   |  60                 | 5733306 |
|       2       |        3           |        82.359                |      1317.74                   |  70                 | 5733528 |
|       3       |        2           |        61.354                |      1472.50                   |  80                 | 5733538 |
|       4       |        1           |        50.967                |      1630.95                   |  90                 | 5733550 |

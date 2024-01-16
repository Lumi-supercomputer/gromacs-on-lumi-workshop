**System: Aquaporin**

No. of atoms: 109992

1. Replicas 01-16 provided in the folder `ensemble_inputs` was used for AWH simulation
2. Simulations were performed using 1, 2 and 4 complete GPU nodes such that each simulation task was executed on 0.5, 1 and 2 GCDs, respectively
3. Direct GPU communication was enabled
4. All force tasks (`-bonded`, `-nb`, `-pme`) and update were carried out on GPU
5. GPU utilization can be monitored with `srun --overlap --pty --jobid=<jobid> $SHELL` and then `watch rocm-smi`
   * In practice, the average GPU utilization was estimated by logging the GPU use of a single device once a second during the job

**Performance Analysis**

| Nodes |  Threads per Task  | Average Performance (ns/day) | Aggregate Performance (ns/day) | GPU utilization (%) | Job ID  |
|-------|--------------------|------------------------------|--------------------------------|---------------------|---------|
|  1    |        3           |     80.390                   |    1286.24                     |   70                | 5736670 |
|  2    |        7           |    157.048                   |    2512.77                     |   60                | 5736673 |
|  4    |        7           |    130.914                   |    2094.63                     |   40                | 5736841 |

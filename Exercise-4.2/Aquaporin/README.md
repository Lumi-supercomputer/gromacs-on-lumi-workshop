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
|  1    |        3           |     85.18                    |   1362.85                      |   70                | 5775020 |
|  2    |        7           |    154.81                    |   2476.95                      |   60                | 5775026 |
|  4    |        7           |    131.667                   |   2106.66                      |   40                | 5775067 |

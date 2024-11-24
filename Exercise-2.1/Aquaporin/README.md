**System: Aquaporin**

No. of atoms: 109992

1. The .tpr file used in the benchmarking is the same as the one provided in the exercise
2. All simulations were performed on a single GCD (1 MPI task, 7 threads per task)

**Performance Analysis**

| Non-Bonded |   PME  | Bonded |   Update  |  Performance (ns/day) | Job ID  |
|------------|--------| -------|-----------|-----------------------|---------|
|    cpu     |   cpu  |  cpu   |    cpu    |  6.779                | 8486391 |
|    gpu     |   cpu  |  cpu   |    cpu    |  50.719               | 8486567 |
|    gpu     |   gpu  |  cpu   |    cpu    |  98.266               | 8486586 |
|    gpu     |   gpu  |  gpu   |    cpu    |  132.022              | 8486600 |

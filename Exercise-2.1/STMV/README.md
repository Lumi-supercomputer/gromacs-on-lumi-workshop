**System: STMV**

No. of atoms: 1066628

1. The .tpr file used in the benchmarking is the same as the one provided in the exercise
2. All simulations were performed on a single GCD (1 MPI task, 7 threads per task)

**Performance Analysis**

| Non-Bonded |   PME  | Bonded |   Update  |  Performance (ns/day) | Job ID  |
|------------|--------| -------|-----------|-----------------------|---------|
|    cpu     |   cpu  |  cpu   |    cpu    |     0.594             | 8486397 |
|    gpu     |   cpu  |  cpu   |    cpu    |     3.438             | 8486570 |
|    gpu     |   gpu  |  cpu   |    cpu    |     9.906             | 8486588 |
|    gpu     |   gpu  |  gpu   |    cpu    |    10.232             | 8486602 |

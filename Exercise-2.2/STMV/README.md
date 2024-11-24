**System: STMV**

No. of atoms: 1066628

1. The .tpr file used in the benchmarking is the same as the one provided in the exercise
2. All simulations were performed on a single GCD (1 MPI task, 7 threads per task)

**Performance Analysis**

| Non-Bonded |   PME  | Bonded |   Update  |  Performance (ns/day) | Job ID  |
|------------|--------| -------|-----------|-----------------------|---------|
|    gpu     |   cpu  |  cpu   |    gpu    |  3.823                | 8486613 |
|    gpu     |   cpu  |  gpu   |    gpu    |  4.208                | 8486747 |
|    gpu     |   gpu  |  cpu   |    gpu    |  17.615               | 8486623 |
|    gpu     |   gpu  |  gpu   |    gpu    |  17.462               | 8486754 |

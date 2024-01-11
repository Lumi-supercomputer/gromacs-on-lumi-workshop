**System: STMV**

No. of atoms: 1066628

1. The .tpr file used in the benchmarking is the same as the one provided in the exercise
2. All simulations were performed on a single GCD (1 MPI task, 7 threads per task)

**Performance Analysis**

| Bonded | Non-Bonded |   PME   |   Update  |  Performance (ns/day) | Job ID  |
| -------|------------|---------|-----------|-----------------------|---------|
|  cpu   |    cpu     |   cpu   |    cpu    |     0.632             | 5643313 |
|  cpu   |    gpu     |   cpu   |    cpu    |     3.113             | 5643323 |
|  cpu   |    gpu     |   gpu   |    cpu    |     8.089             | 5643327 |
|  gpu   |    gpu     |   gpu   |    cpu    |     8.818             | 5643328 |

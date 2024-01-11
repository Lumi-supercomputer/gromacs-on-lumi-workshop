**System: STMV**

No. of atoms: 1066628

1. The .tpr file used in the benchmarking is the same as the one provided in the exercise
2. All simulations were performed on a single GCD (1 MPI task, 7 threads per task)

**Performance Analysis**

| Bonded | Non-Bonded |   PME   |   Update  |  Performance (ns/day) | Job ID  |
| -------|------------|---------|-----------|-----------------------|---------|
|  gpu   |    gpu     |   gpu   |    gpu    |  17.533               | 5643728 |
|  gpu   |    gpu     |   cpu   |    gpu    |  3.709                | 5643729 |
|  cpu   |    gpu     |   cpu   |    gpu    |  3.572                | 5643956 |
|  cpu   |    gpu     |   gpu   |    gpu    |  15.811               | 5643957 |

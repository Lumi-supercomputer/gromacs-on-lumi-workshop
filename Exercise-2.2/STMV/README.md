**System : STMV**

No. of atoms: 1066628

1. The .tpr file (pme_nvt.tpr) file used in the benchmarking is the same as the one provided in the exercise
2. All simulations were performed on a single GCD (1 MPI task, 7 threads per task)

**Performance Analysis**

| Bonded | Non-Bonded |   PME   |   Update  |  Performance (ns/day) | Job ID  |
| -------|------------|---------|-----------|-----------------------|---------|
|  gpu   |    gpu     |   gpu   |    gpu    |   17.419              | 5630094 |
|  gpu   |    gpu     |   cpu   |    gpu    |   3.494               | 5630109 |
|  cpu   |    gpu     |   cpu   |    gpu    |   3.518               | 5630130 |

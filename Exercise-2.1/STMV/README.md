**System: STMV**

No. of atoms: 1066628

1. The .tpr file used in the benchmarking is the same as the one provided in the exercise
2. All simulations were performed on a single GCD (1 MPI task, 7 threads per task)

**Performance Analysis**

| Bonded | Non-Bonded |   PME   |   Update  |  Performance (ns/day) | Job ID  |
| -------|------------|---------|-----------|-----------------------|---------|
|  cpu   |    cpu     |   cpu   |    cpu    |     0.530             | 5771541 |
|  cpu   |    gpu     |   cpu   |    cpu    |     2.773             | 5771566 |
|  cpu   |    gpu     |   gpu   |    cpu    |     8.109             | 5771593 |
|  gpu   |    gpu     |   gpu   |    cpu    |     8.788             | 5771597 |

**System: STMV**

No. of atoms: 1066628

1. The .tpr file used in the benchmarking is the same as the one provided in the exercise
2. All simulations were performed on a single GCD (1 MPI task, 7 threads per task)

**Performance Analysis**

| Bonded | Non-Bonded |   PME   |   Update  |  Performance (ns/day) | Job ID  |
| -------|------------|---------|-----------|-----------------------|---------|
|  gpu   |    gpu     |   gpu   |    gpu    |  16.962               | 5771733 |
|  gpu   |    gpu     |   cpu   |    gpu    |  3.611                | 5771738 |
|  cpu   |    gpu     |   cpu   |    gpu    |  3.556                | 5771754 |
|  cpu   |    gpu     |   gpu   |    gpu    |  15.829               | 5771757 |

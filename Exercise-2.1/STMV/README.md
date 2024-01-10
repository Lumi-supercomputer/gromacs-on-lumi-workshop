**System : STMV**

No. of atoms: 1066628

1. The .tpr file (pme_nvt.tpr) file used in the benchmarking is the same as the one provided in the exercise
2. All simulations were performed on a single GCD (1 MPI task, 7 threads per task)

**Performance Analysis**

| Bonded | Non-Bonded |   PME   |   Update  |  Performance (ns/day) | Job ID  |
| -------|------------|---------|-----------|-----------------------|---------|
|  cpu   |    cpu     |   cpu   |    cpu    |    0.577              | 5629836 |
|  cpu   |    gpu     |   cpu   |    cpu    |    3.085              | 5629846 |
|  cpu   |    gpu     |   gpu   |    cpu    |    7.831              | 5629847 |
|  gpu   |    gpu     |   gpu   |    cpu    |    8.834              | 5629848 |

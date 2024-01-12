**System: STMV**

No. of atoms: 1066628

1. The .tpr file used in the benchmarking is the same as the one provided in the exercise
2. All simulations were performed on two GCDs (2+1 PP+PME ranks, 7 threads per task) with direct GPU communication enabled

**Performance Analysis**

| Bonded | Non-Bonded |   PME   |   Update  |  Performance (ns/day) | Job ID  |
| -------|------------|---------|-----------|-----------------------|---------|
|  gpu   |    gpu     |   gpu   |    gpu    |  30.085               | 5648887 |
|  cpu   |    gpu     |   gpu   |    gpu    |  23.012               | 5648839 |
|  cpu   |    gpu     |   gpu   |    cpu    |  16.417               | 5648790 |
|  gpu   |    gpu     |   gpu   |    cpu    |  22.622               | 5648861 |

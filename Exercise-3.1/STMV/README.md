**System: STMV**

No. of atoms: 1066628

1. The .tpr file used in the benchmarking is the same as the one provided in the exercise
2. All simulations were performed on two GCDs (1+1 PP+PME ranks, 7 threads per task)

**Performance Analysis**

| Non-Bonded |   PME  | Bonded |   Update  |  Performance (ns/day) | Job ID  |
|------------|--------| -------|-----------|-----------------------|---------|
|    gpu     |   gpu  |  cpu   |    cpu    |  8.680                | 8486620 |
|    gpu     |   gpu  |  cpu   |    gpu    |  13.632               | 8486894 |
|    gpu     |   gpu  |  gpu   |    cpu    |  8.145                | 8486764 |
|    gpu     |   gpu  |  gpu   |    gpu    |  14.476               | 8486950 |

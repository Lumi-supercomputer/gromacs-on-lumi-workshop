**System: STMV**

No. of atoms: 1066628

1. The .tpr file used in the benchmarking is the same as the one provided in the exercise
2. All simulations were performed on two GCDs (1+1 PP+PME ranks, 7 threads per task) with direct GPU communication enabled

**Performance Analysis**

| Non-Bonded |   PME  | Bonded |   Update  |  Performance (ns/day) | Job ID  |
|------------|--------| -------|-----------|-----------------------|---------|
|    gpu     |   gpu  |  cpu   |    cpu    |  13.159               | 8487099 |
|    gpu     |   gpu  |  cpu   |    gpu    |  20.132               | 8487430 |
|    gpu     |   gpu  |  gpu   |    cpu    |  13.781               | 8487140 |
|    gpu     |   gpu  |  gpu   |    gpu    |  19.829               | 8487447 |

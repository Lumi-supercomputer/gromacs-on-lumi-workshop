**System: Aquaporin**

No. of atoms: 109992

1. The .tpr file used in the benchmarking is the same as the one provided in the exercise
2. All simulations were performed on two GCDs (1+1 PP+PME ranks, 7 threads per task)
3. Direct GPU communication is used

**Performance Analysis**

| Non-Bonded |   PME  | Bonded |   Update  |  Performance (ns/day) | Job ID  |
|------------|--------| -------|-----------|-----------------------|---------|
|    gpu     |   gpu  |  cpu   |    cpu    |  107.001              | 8487428 |
|    gpu     |   gpu  |  cpu   |    gpu    |  126.379              | 8488717 |
|    gpu     |   gpu  |  gpu   |    cpu    |  141.204              | 8487445 |
|    gpu     |   gpu  |  gpu   |    gpu    |  182.176              | 8491412 |

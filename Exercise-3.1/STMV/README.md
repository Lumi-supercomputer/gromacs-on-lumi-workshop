**System: STMV**

No. of atoms: 1066628

1. The .tpr file used in the benchmarking is the same as the one provided in the exercise
2. All simulations were performed on two GCDs (1+1 PP+PME ranks, 7 threads per task)

**Performance Analysis**

| Bonded | Non-Bonded |   PME   |   Update  |  Performance (ns/day) | Job ID  |
| -------|------------|---------|-----------|-----------------------|---------|
|  gpu   |    gpu     |   gpu   |    gpu    |  13.931               | 5773060 |
|  cpu   |    gpu     |   gpu   |    gpu    |  10.460               | 5773064 |
|  cpu   |    gpu     |   gpu   |    cpu    |  6.980                | 5773128 |
|  gpu   |    gpu     |   gpu   |    cpu    |  8.346                | 5773130 |

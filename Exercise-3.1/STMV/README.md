**System: STMV**

No. of atoms: 1066628

1. The .tpr file used in the benchmarking is the same as the one provided in the exercise
2. All simulations were performed on two GCDs (2+1 PP+PME ranks, 7 threads per task)

**Performance Analysis**

| Bonded | Non-Bonded |   PME   |   Update  |  Performance (ns/day) | Job ID  |
| -------|------------|---------|-----------|-----------------------|---------|
|  gpu   |    gpu     |   gpu   |    gpu    |  18.035               | 5648650 |
|  cpu   |    gpu     |   gpu   |    gpu    |  16.762               | 5648654 |
|  cpu   |    gpu     |   gpu   |    cpu    |  12.424               | 5648655 |
|  gpu   |    gpu     |   gpu   |    cpu    |  13.921               | 5648656 |

**System: STMV**

No. of atoms: 1066628

1. The .tpr file used in the benchmarking is the same as the one provided in the exercise
2. All simulations were performed on two GCDs (1+1 PP+PME ranks, 7 threads per task) with direct GPU communication enabled

**Performance Analysis**

| Bonded | Non-Bonded |   PME   |   Update  |  Performance (ns/day) | Job ID  |
| -------|------------|---------|-----------|-----------------------|---------|
|  gpu   |    gpu     |   gpu   |    gpu    |  16.236               | 5773388 |
|  cpu   |    gpu     |   gpu   |    gpu    |  13.397               | 5773391 |
|  cpu   |    gpu     |   gpu   |    cpu    |   9.467               | 5773424 |
|  gpu   |    gpu     |   gpu   |    cpu    |  11.062               | 5773435 |

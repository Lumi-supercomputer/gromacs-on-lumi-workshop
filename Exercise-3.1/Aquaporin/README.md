**System: Aquaporin**

No. of atoms: 109992

1. The .tpr file used in the benchmarking is the same as the one provided in the exercise
2. All simulations were performed on two GCDs (1+1 PP+PME ranks, 7 threads per task)

**Performance Analysis**

| Bonded | Non-Bonded |   PME   |   Update  |  Performance (ns/day) | Job ID  |
| -------|------------|---------|-----------|-----------------------|---------|
|  gpu   |    gpu     |   gpu   |    gpu    |  115.538              | 5772971 |
|  cpu   |    gpu     |   gpu   |    gpu    |  73.588               | 5772982 |
|  cpu   |    gpu     |   gpu   |    cpu    |  75.625               | 5773023 |
|  gpu   |    gpu     |   gpu   |    cpu    |  114.305              | 5773026 |

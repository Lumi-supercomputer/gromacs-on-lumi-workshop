**System: Aquaporin**

No. of atoms: 109992

1. The .tpr file used in the benchmarking is the same as the one provided in the exercise
2. All simulations were performed on two GCDs (1+1 PP+PME ranks, 7 threads per task)
3. Direct GPU communication is used

**Performance Analysis**

| Bonded | Non-Bonded |   PME   |   Update  |  Performance (ns/day) | Job ID  |
| -------|------------|---------|-----------|-----------------------|---------|
|  gpu   |    gpu     |   gpu   |    gpu    |  133.005              | 5773282 |
|  cpu   |    gpu     |   gpu   |    gpu    |  83.348               | 5773293 |
|  cpu   |    gpu     |   gpu   |    cpu    |  77.650               | 5773319 |
|  gpu   |    gpu     |   gpu   |    cpu    |  112.179              | 5773322 |

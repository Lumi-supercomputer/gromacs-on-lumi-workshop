**System: Aquaporin**

No. of atoms: 109992

1. The .tpr file used in the benchmarking is the same as the one provided in the exercise
2. All simulations were performed on a single GCD (1 MPI task, 7 threads per task)

**Performance Analysis**

| Bonded | Non-Bonded |   PME   |   Update  |  Performance (ns/day) | Job ID  |
| -------|------------|---------|-----------|-----------------------|---------|
|  cpu   |    cpu     |   cpu   |    cpu    |  7.907                | 5643359 |
|  cpu   |    gpu     |   cpu   |    cpu    |  46.166               | 5643362 |
|  cpu   |    gpu     |   gpu   |    cpu    |  79.469               | 5643450 |
|  gpu   |    gpu     |   gpu   |    cpu    |  121.078              | 5643458 |

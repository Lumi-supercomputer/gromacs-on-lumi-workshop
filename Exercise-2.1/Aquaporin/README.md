**System: Aquaporin**

No. of atoms: 109992

1. The .tpr file used in the benchmarking is the same as the one provided in the exercise
2. All simulations were performed on a single GCD (1 MPI task, 7 threads per task)

**Performance Analysis**

| Bonded | Non-Bonded |   PME   |   Update  |  Performance (ns/day) | Job ID  |
| -------|------------|---------|-----------|-----------------------|---------|
|  cpu   |    cpu     |   cpu   |    cpu    |  7.128                | 5771448 |
|  cpu   |    gpu     |   cpu   |    cpu    |  41.507               | 5771450 |
|  cpu   |    gpu     |   gpu   |    cpu    |  72.591               | 5771508 |
|  gpu   |    gpu     |   gpu   |    cpu    |  115.206              | 5771510 |

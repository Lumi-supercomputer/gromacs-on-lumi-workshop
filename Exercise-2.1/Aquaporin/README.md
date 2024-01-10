**System : Aquaporin**

No. of atoms: 109992

1. The .tpr file (topol.tpr) file used in the benchmarking is the same as the one provided in the exercise
2. All simulations were performed on a single GCD (1 MPI task, 7 threads per task)

**Performance Analysis**

| Bonded | Non-Bonded |   PME   |   Update  |  Performance (ns/day) | Job ID  |
| -------|------------|---------|-----------|-----------------------|---------|
|  cpu   |    cpu     |   cpu   |    cpu    |    7.198              | 5630598 |
|  cpu   |    gpu     |   cpu   |    cpu    |   42.558              | 5630606 |
|  cpu   |    gpu     |   gpu   |    cpu    |   74.569              | 5630607 |
|  gpu   |    gpu     |   gpu   |    cpu    |  116.567              | 5630608 |

**System : Aquaporin**

No. of atoms: 109992

1. The .tpr file (topol.tpr) file used in the benchmarking is the same as the one provided in the exercise
2. All simulations were performed on a single GCD (1 MPI task, 7 threads per task)

**Performance Analysis**

| Bonded | Non-Bonded |   PME   |   Update  |  Performance (ns/day) | Job ID  |
| -------|------------|---------|-----------|-----------------------|---------|
|  gpu   |    gpu     |   gpu   |    gpu    |   167.538             | 5630696 |
|  gpu   |    gpu     |   cpu   |    gpu    |   64.109              | 5630697 |
|  cpu   |    gpu     |   cpu   |    gpu    |   47.946              | 5630698 |

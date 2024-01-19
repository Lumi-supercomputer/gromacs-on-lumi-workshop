**System : Aquaporin**

No. of atoms: 109992

1. The .tpr file used in the benchmarking is the same as the one provided in the exercise
2. All simulations were performed on a single GCD (1 MPI task, 7 threads per task)

**Performance Analysis**

| Bonded | Non-Bonded |   PME   |   Update  |  Performance (ns/day) | Job ID  |
| -------|------------|---------|-----------|-----------------------|---------|
|  gpu   |    gpu     |   gpu   |    gpu    |  165.798              | 5771643 |
|  gpu   |    gpu     |   cpu   |    gpu    |  63.646               | 5771644 |
|  cpu   |    gpu     |   cpu   |    gpu    |  47.798               | 5771664 |
|  cpu   |    gpu     |   gpu   |    gpu    |  90.744               | 5771667 |

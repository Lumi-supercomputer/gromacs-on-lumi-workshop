**System : Aquaporin**

No. of atoms: 109992

1. The .tpr file used in the benchmarking is the same as the one provided in the exercise
2. All simulations were performed on a single GCD (1 MPI task, 7 threads per task)

**Performance Analysis**

| Bonded | Non-Bonded |   PME   |   Update  |  Performance (ns/day) | Job ID  |
| -------|------------|---------|-----------|-----------------------|---------|
|  gpu   |    gpu     |   gpu   |    gpu    | 168.433               | 5643654 |
|  gpu   |    gpu     |   cpu   |    gpu    | 68.421                | 5643658 |
|  cpu   |    gpu     |   cpu   |    gpu    | 51.989                | 5643691 |
|  cpu   |    gpu     |   gpu   |    gpu    | 93.364                | 5643692 |

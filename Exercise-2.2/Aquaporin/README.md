**System : Aquaporin**

No. of atoms: 109992

1. The .tpr file used in the benchmarking is the same as the one provided in the exercise
2. All simulations were performed on a single GCD (1 MPI task, 7 threads per task)

**Performance Analysis**

| Non-Bonded |   PME  | Bonded |   Update  |  Performance (ns/day) | Job ID  |
|------------|--------| -------|-----------|-----------------------|---------|
|    gpu     |   cpu  |  cpu   |    gpu    |  60.413               | 8486611 |
|    gpu     |   cpu  |  gpu   |    gpu    |  61.238               | 8486746 |
|    gpu     |   gpu  |  cpu   |    gpu    |  144.362              | 8486622 |
|    gpu     |   gpu  |  gpu   |    gpu    |  189.968              | 8486753 |


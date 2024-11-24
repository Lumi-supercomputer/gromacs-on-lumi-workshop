**System: Aquaporin**

No. of atoms: 109992

1. The .tpr file used in the benchmarking is the same as the one provided in the exercise
2. All simulations were performed on two GCDs (1+1 PP+PME ranks, 7 threads per task)

**Performance Analysis**

| Non-Bonded |   PME  | Bonded |   Update  |  Performance (ns/day) | Job ID  |
|------------|--------| -------|-----------|-----------------------|---------|
|    gpu     |   gpu  |  cpu   |    cpu    |  106.785              | 8486619 |
|    gpu     |   gpu  |  cpu   |    gpu    |  103.925              | 8486893 |
|    gpu     |   gpu  |  gpu   |    cpu    |  123.336              | 8486763 |
|    gpu     |   gpu  |  gpu   |    gpu    |  135.343              | 8486949 |

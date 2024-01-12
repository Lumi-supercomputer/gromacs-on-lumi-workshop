**System: Aquaporin**

No. of atoms: 109992

1. The .tpr file used in the benchmarking is the same as the one provided in the exercise
2. All simulations were performed on two GCDs (2+1 PP+PME ranks, 7 threads per task)

**Performance Analysis**

| Bonded | Non-Bonded |   PME   |   Update  |  Performance (ns/day) | Job ID  |
| -------|------------|---------|-----------|-----------------------|---------|
|  gpu   |    gpu     |   gpu   |    gpu    |  145.850              | 5648981 |
|  cpu   |    gpu     |   gpu   |    gpu    |  108.824              | 5648982 |
|  cpu   |    gpu     |   gpu   |    cpu    |  116.093              | 5648986 |
|  gpu   |    gpu     |   gpu   |    cpu    |  146.828              | 5648987 |

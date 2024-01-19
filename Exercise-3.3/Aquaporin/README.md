**System: Aquaporin**

No. of atoms: 109992

1. The .tpr file used in the benchmarking is the same as the one provided in the exercise
2. All simulations were performed using 1 task per GCD, 7 threads per task
3. Direct GPU communication is used

**Performance Analysis**

| GCDs | Bonded | Non-Bonded |   PME   |   Update  | nstlist |  Performance (ns/day) | Job ID  |
|------|--------|------------|---------|-----------|---------|-----------------------|---------|
|  4   |  gpu   |    gpu     |   gpu   |    gpu    | 100     |  190.402              | 5773959 |
|  6   |  gpu   |    gpu     |   gpu   |    gpu    | 100     |  211.804              | 5773961 |
|  8   |  gpu   |    gpu     |   gpu   |    gpu    | 100     |  195.288              | 5774005 |
|  8   |  gpu   |    gpu     |   gpu   |    gpu    | 150     |  175.390              | 5774009 |

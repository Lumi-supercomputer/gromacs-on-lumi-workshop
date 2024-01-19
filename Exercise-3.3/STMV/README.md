**System: STMV**

No. of atoms: 1066628

1. The .tpr file used in the benchmarking is the same as the one provided in the exercise
2. All simulations were performed using 1 task per GCD, 7 threads per task
3. Direct GPU communication is used

**Performance Analysis**

| GCDs | Bonded | Non-Bonded |   PME   |   Update  | nstlist |  Performance (ns/day) | Job ID  |
|------|--------|------------|---------|-----------|---------|-----------------------|---------|
|  4   |  gpu   |    gpu     |   gpu   |    gpu    | 100     |  44.276               | 5774117 |
|  6   |  gpu   |    gpu     |   gpu   |    gpu    | 100     |  65.332               | 5774126 |
|  8   |  gpu   |    gpu     |   gpu   |    gpu    | 100     |  70.403               | 5774153 |
|  8   |  gpu   |    gpu     |   gpu   |    gpu    | 400     |  79.709               | 5774166 |

**System: STMV**

No. of atoms: 1066628

1. The .tpr file used in the benchmarking is the same as the one provided in the exercise
2. All simulations were performed using 1 task per GCD, 7 threads per task
3. Direct GPU communication is used

**Performance Analysis**

| GCDs | Non-Bonded |   PME  | Bonded |   Update  | nstlist |  Performance (ns/day) | Job ID  |
|------|------------|--------|--------|-----------|---------|-----------------------|---------|
|  4   |    gpu     |   gpu  |  gpu   |    gpu    | 100     |  47.966               | 8487438 |
|  6   |    gpu     |   gpu  |  gpu   |    gpu    | 100     |  74.716               | 8488688 |
|  8   |    gpu     |   gpu  |  gpu   |    gpu    | 100     |  88.341               | 8491416 |
|  8   |    gpu     |   gpu  |  gpu   |    gpu    | 400     | 103.453               | 8496140 |

**System: STMV**

No. of atoms: 1066628

1. The .tpr file used in the benchmarking is the same as the one provided in the exercise
2. The simulation was performed using 2 GCDs with 2+1 PP+PME tasks and 7 threads per task
3. Direct GPU communication is used

**Performance Analysis**

| GCDs | Non-Bonded |   PME  | Bonded |   Update  | nstlist |  Performance (ns/day) | Job ID  |
|------|------------|--------|--------|-----------|---------|-----------------------|---------|
|  2   |    gpu     |   gpu  |  gpu   |    gpu    | 100     |  30.657               | 8496143 |

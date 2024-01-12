**System: Aquaporin**

No. of atoms: 109992

1. The .tpr file used in the benchmarking is the same as the one provided in the exercise
2. All simulations were performed on two GCDs (2+1 PP+PME ranks, 7 threads per task)
3. Direct GPU communication is used

**Performance Analysis**

| Bonded | Non-Bonded |   PME   |   Update  |  Performance (ns/day) | Job ID  |
| -------|------------|---------|-----------|-----------------------|---------|
|  gpu   |    gpu     |   gpu   |    gpu    | 154.217               | 5649805 |
|  cpu   |    gpu     |   gpu   |    gpu    | 111.516               | 5649808 |
|  cpu   |    gpu     |   gpu   |    cpu    | 101.143               | 5649833 |
|  gpu   |    gpu     |   gpu   |    cpu    | 136.081               | 5649836 |

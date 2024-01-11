System : STMV

No of atoms: 1066628

***Note**: 1. The .tpr file (pme_nvt.tpr) file used in the benchmarking is the same as the one provided in the exercise.</br>*
*2. All simulations were performed on a single GPU node using 4 GCDs (2 GPUs).* 


## Exercise 3.1: Separate PME rank

**Performance Analysis**

| No of GPUs | Bonded | Non-Bonded |   PME   |   Update  |  Performance (ns/day) |  Job ID   |
|------------| -------|------------|---------|-----------|-----------------------|-----------|
|    2       |  cpu   |    gpu     |   gpu   |    cpu    |    19,612             |  5642718  |
|    2       |  gpu   |    gpu     |   gpu   |    cpu    |    24,598             |  5643981  |
|    2       |  cpu   |    gpu     |   gpu   |    gpu    |    23,061             |  5644029  |
|    2       |  gpu   |    gpu     |   gpu   |    gpu    |    27,951             |  5644292  |

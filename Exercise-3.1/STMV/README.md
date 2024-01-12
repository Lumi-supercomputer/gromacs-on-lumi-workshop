System : STMV

No of atoms: 1066628

***Note**: 1. The .tpr file (pme_nvt.tpr) file used in the benchmarking is the same as the one provided in the exercise.</br>*
*2. All simulations were performed on a single GPU node using 2 GCDs.* 


## Exercise 3.1: Separate PME rank

**Performance Analysis**

| No of GPUs | Bonded | Non-Bonded |   PME   |   Update  |  Performance (ns/day) |  Job ID   |
|------------| -------|------------|---------|-----------|-----------------------|-----------|
|    2       |  cpu   |    gpu     |   gpu   |    cpu    |     7,617             |  5642710  |
|    2       |  gpu   |    gpu     |   gpu   |    cpu    |     9,126             |  5648244  |
|    2       |  cpu   |    gpu     |   gpu   |    gpu    |    11,199             |  5648188  |
|    2       |  gpu   |    gpu     |   gpu   |    gpu    |    15,150             |  5648272  |

**System : STMV**

No of atoms: 1066628

*Note: 1. The .tpr file (pme_nvt.tpr) file used in the benchmarking is the same as the one provided in the exercise.</br>*
*2. All simulations were performed on a single GPU node (4 GPUs each with 2 GCD; 64 CPUs).* 


**Performance Analysis**

| Bonded | Non-Bonded |   PME   |   Update  |  Performance (ns/day) |
| -------|------------|---------|-----------|-----------------------|
|  cpu   |    cpu     |   cpu   |    cpu    |    0,155              |
|  cpu   |    gpu     |   cpu   |    cpu    |    0,761              |
|  cpu   |    gpu     |   gpu   |    cpu    |    1,140              |
|  cpu   |    gpu     |   gpu   |    gpu    |    0,456              |

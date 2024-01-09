**System : STMV**

No of atoms: 1066628

*Note: 1. The .tpr file (pme_nvt.tpr) file used in the benchmarking is the same as the one provided in the exercise.</br>*
*2. All simulations were performed on a single GPU node (4 GPUs each with 2 GCD; 64 CPUs).* 


| Bonded | Non-Bonded |   PME   |   Update  |  Performance (ns/day) |
| -------|------------|---------|-----------|-----------------------|
|  gpu   |    gpu     |   gpu   |    gpu    |    0,859              |
|  gpu   |    gpu     |   cpu   |    gpu    |                       |
|  cpu   |    gpu     |   cpu   |    gpu    |    0,172              |

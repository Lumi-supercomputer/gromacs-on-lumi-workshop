# 3. Scaling GROMACS across multiple GPUs

For these exercises, LUMI-G was used.

System : STMV

No of atoms: 1066628

***Note**: 1. The .tpr file (pme_nvt.tpr) file used in the benchmarking is the same as the one provided in the exercise.</br>*
*2. All simulations were performed on a two GPU nodes (4 GPUs each with 2 GCD; 64 CPUs).* 


## Exercise 3.1: Separate PME rank

**Performance Analysis**

| Bonded | Non-Bonded |   PME   |   Update  |  Performance (ns/day) |
| -------|------------|---------|-----------|-----------------------|
|  gpu   |    gpu     |   gpu   |    gpu    |    48,666             |
|  gpu   |    gpu     |   gpu   |    cpu    |    49,883             |
|  cpu   |    gpu     |   gpu   |    cpu    |    49,816             |
|  cpu   |    gpu     |   gpu   |    gpu    |    48,279             |

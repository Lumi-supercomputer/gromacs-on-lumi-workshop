# 2. GPU accelerated simulations

For these exercises, LUMI-G was used.

System : STMV

No of atoms: 1066628

***Note**: 1. The .tpr file (pme_nvt.tpr) file used in the benchmarking is the same as the one provided in the exercise.</br>*
*2. All simulations were performed on a single GPU node (4 GPUs each with 2 GCD; 64 CPUs).* 


## Exercise 2.1: GPU offloading force computations

**Performance Analysis**

| Bonded | Non-Bonded |   PME   |   Update  |  Performance (ns/day) |
| -------|------------|---------|-----------|-----------------------|
|  cpu   |    cpu     |   cpu   |    cpu    |     3,358             |
|  cpu   |    gpu     |   cpu   |    cpu    |    18,567             |
|  cpu   |    gpu     |   gpu   |    cpu    |    43,158             |
|  gpu   |    gpu     |   cpu   |    cpu    |    23,961             |
|  gpu   |    gpu     |   gpu   |    cpu    |    55,402             |

## Exercise 2.1: GPU-resident mode

| Bonded | Non-Bonded |   PME   |   Update  |  Performance (ns/day) |
| -------|------------|---------|-----------|-----------------------|
|  gpu   |    gpu     |   gpu   |    gpu    |    66,136             |
|  gpu   |    gpu     |   cpu   |    gpu    |    26,485             |
|  cpu   |    gpu     |   gpu   |    gpu    |    48,065             |
|  cpu   |    gpu     |   cpu   |    gpu    |    20,396             |

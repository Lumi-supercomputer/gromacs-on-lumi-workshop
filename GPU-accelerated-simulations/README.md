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
|  cpu   |    cpu     |   cpu   |    cpu    |    0,155              |
|  cpu   |    gpu     |   cpu   |    cpu    |    0,761              |
|  cpu   |    gpu     |   gpu   |    cpu    |    1,140              |
|  cpu   |    gpu     |   gpu   |    gpu    |    0,456              |

## Exercise 2.2: GPU-resident mode

| Bonded | Non-Bonded |   PME   |   Update  |  Performance (ns/day) |
| -------|------------|---------|-----------|-----------------------|
|  gpu   |    gpu     |   gpu   |    gpu    |    0,859              |
|  gpu   |    gpu     |   cpu   |    gpu    |                       |
|  cpu   |    gpu     |   cpu   |    gpu    |    0,172              |


System : Aquaporin

No of atoms: 109992

***Note**: 1. The .tpr file (topol.tpr) file used in the benchmarking is the same as the one provided in the exercise.</br>*
*2. All simulations were performed on a single GCD node (7 CPUs).* 


## Exercise 2.1: GPU offloading force computations

**Performance Analysis**

| Bonded | Non-Bonded |   PME   |   Update  |  Performance (ns/day) |
| -------|------------|---------|-----------|-----------------------|
|  cpu   |    cpu     |   cpu   |    cpu    |    7,989              |
|  cpu   |    gpu     |   cpu   |    cpu    |   46,243              |
|  cpu   |    gpu     |   gpu   |    cpu    |   69,631              |
|  cpu   |    gpu     |   gpu   |    gpu    |   78,803              |

## Exercise 2.2: GPU-resident mode

| Bonded | Non-Bonded |   PME   |   Update  |  Performance (ns/day) |
| -------|------------|---------|-----------|-----------------------|
|  gpu   |    gpu     |   gpu   |    gpu    |    169,528            |
|  gpu   |    gpu     |   cpu   |    gpu    |     68,775            |
|  cpu   |    gpu     |   cpu   |    gpu    |     52,959            |

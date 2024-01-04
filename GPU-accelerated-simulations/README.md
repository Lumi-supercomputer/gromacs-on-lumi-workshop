# 2. GPU accelerated simulations

## Exercise 2.1: GPU offloading force computations

For this exercise, LUMI-G was used.

System : STMV

No of atoms: 1066628

*Note: The .tpr file (pme_nvt.tpr) file used in the benchmarking is the same as the one provided in the exercise*

**Performance Analysis**

| Bonded | Non-Bonded |   PME   |   Update  |  Performance (ns/day) |
| -------|------------|---------|-----------|-----------------------|
|  cpu   |    cpu     |   cpu   |    cpu    |     3,358             |
|  cpu   |    gpu     |   cpu   |    cpu    |    18,567             |
|  cpu   |    gpu     |   cpu   |    gpu    |    20,396             |
|  cpu   |    gpu     |   gpu   |    cpu    |    43,158             |
|  cpu   |    gpu     |   gpu   |    gpu    |    48,065             |
|  gpu   |    gpu     |   cpu   |    cpu    |    23,961             |
|  gpu   |    gpu     |   gpu   |    cpu    |    55,402             |


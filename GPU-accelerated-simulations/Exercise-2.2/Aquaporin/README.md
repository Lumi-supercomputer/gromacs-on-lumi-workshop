**System : Aquaporin**

No of atoms: 109992

*Note: 1. The .tpr file (topol.tpr) file used in the benchmarking is the same as the one provided in the exercise.</br>*
*2. All simulations were performed on a single GCD node (7 CPUs).* 


| Bonded | Non-Bonded |   PME   |   Update  |  Performance (ns/day) |
| -------|------------|---------|-----------|-----------------------|
|  gpu   |    gpu     |   gpu   |    gpu    |    169,528            |
|  gpu   |    gpu     |   cpu   |    gpu    |     68,775            |
|  cpu   |    gpu     |   cpu   |    gpu    |     52,959            |

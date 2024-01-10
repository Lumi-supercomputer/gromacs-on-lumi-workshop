**System : Aquaporin**

No of atoms: 109992

*Note: 1. The .tpr file (topol.tpr) file used in the benchmarking is the same as the one provided in the exercise.</br>*
*2. All simulations were performed on a single GCD node (7 CPUs).* 


**Performance Analysis**

| Bonded | Non-Bonded |   PME   |   Update  |  Performance (ns/day) |
| -------|------------|---------|-----------|-----------------------|
|  cpu   |    cpu     |   cpu   |    cpu    |    7,989              |
|  cpu   |    gpu     |   cpu   |    cpu    |   46,243              |
|  cpu   |    gpu     |   gpu   |    cpu    |   69,631              |
|  cpu   |    gpu     |   gpu   |    gpu    |   78,803              |

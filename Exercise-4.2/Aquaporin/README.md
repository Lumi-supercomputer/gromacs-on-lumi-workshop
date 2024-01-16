**System: Aquaporin**

No. of atoms: 109992

1. Replicas 01 - 16 provided in the folder ensemble_inputs is used for AWH simulation
2. Simulations is performed using 1, 2 and 4 complete GPU nodes such that each simulation task is executed on a 0.5, 1 and 2 GCDs respectively
3. Direct GPU communication is enabled
4. All force tasks (-bonded, -nb, -pme) and update is carried out on GPU.

**Performance Analysis**

| Tasks per GCD |  OMP_NUM_THREADS   | Average Performance (ns/day) | Aggregate Performance (ns/day) | Job ID      |
|---------------|--------------------|------------------------------|--------------------------------|-------------|
|       2       |        1           |        84.704                |      1355.24                   |  5732750    |
|       1       |        1           |       122.262                |      1956.19                   |  5725894    |
|     0.5       |        1           |       100.143                |      1602.45                   |  5726128    |

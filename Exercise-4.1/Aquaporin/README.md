**System: Aquaporin**

No. of atoms: 109992

1. Replicas 01 - 08 provided in the folder ensemble_inputs is used for AWH simulation
2. Simulations is performed using 1 complete GPU node such that each simulation (task) is executed on a single GCD (8 tasks on 8 GCDs)
3. Direct GPU communication is used
4. All force tasks (-bonded, -nb, -pme) and update was carried out on GPU.

**Performance Analysis**

| Tasks per GCD |  OMP_NUM_THREADS   | Average Performance (ns/day) |    Job ID      |
|---------------|--------------------|------------------------------|----------------|
|       1       |        7           |       158.302                |    5651506     |
|       2       |        1           |        84.653                |    5652056     |
|       3       |        1           |        62.849                |    5652323     |
|       4       |        1           |        49.252                |    5721469     |




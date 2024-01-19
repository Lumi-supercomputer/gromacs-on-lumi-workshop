**System: STMV**

No. of atoms: 1066628

1. Replicas 01-16 were created for STMV system using the same .tpr file provided (pme_nvt.tpr) for running AWH simulation
2. Simulations were performed using 2 complete GPU nodes
3. All ranks performed short-range and long-range calculations (-npme 0)
4. Direct GPU communication was enabled

**Performance Analysis**
| Bonded | Non-Bonded |   PME   |   Update  |  Average Performance (ns/day) | Aggregate Performance (ns/day)  |   Job ID |
| -------|------------|---------|-----------|-------------------------------|---------------------------------|----------|
|  gpu   |    gpu     |   gpu   |    gpu    |            17.372             |         274.676                 |  5756608 |
|  gpu   |    gpu     |   gpu   |    cpu    |             7.666             |         122.570                 |  5756976 |
|  cpu   |    gpu     |   gpu   |    gpu    |            15.826             |         255.545                 |  5756780 |
|  cpu   |    gpu     |   gpu   |    cpu    |             6.944             |         110.753                 |  5757059 |

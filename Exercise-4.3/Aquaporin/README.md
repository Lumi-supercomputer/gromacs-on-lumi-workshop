**System: Aquaporin**

No. of atoms: 109992

1. Replicas 01-16 provided in the folder `ensemble_inputs` was used for AWH simulation
2. Simulations were performed using 2 complete GPU nodes
3. All ranks performed short-range and long-range calculations (-npme 0)
4. Direct GPU communication was enabled

**Performance Analysis**
| Bonded | Non-Bonded |   PME   |   Update  |  Average Performance (ns/day) | Aggregate Performance (ns/day)  |   Job ID |
| -------|------------|---------|-----------|-------------------------------|---------------------------------|----------|
|  gpu   |    gpu     |   gpu   |    gpu    |           157.645             |        2522.51                  |  5773963 |
|  gpu   |    gpu     |   gpu   |    cpu    |           104.075             |        1665.20                  |  5756356 |
|  cpu   |    gpu     |   gpu   |    gpu    |            79.049             |        1264.74                  |  5753731 |
|  cpu   |    gpu     |   gpu   |    cpu    |            66.874             |        1069.98                  |  5753680 |

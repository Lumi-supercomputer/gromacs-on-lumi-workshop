# Using multi-core CPUs in a compute node

## Exercise 1.1: OpenMP multi-threading

For this exercise, LUMI-C was used.

System : STMV

No of atoms: 1066628

*Note: The .tpr file (pme_nvt.tpr) file used in the benchmarking is the same as the one provided in the exercise*

**Performance Analysis**

| Number of Nodes | Tasks per node | CPUs per task | Performance (ns/day) |
| ----------------|----------------|---------------|----------------------|
|      1          |      16        |      8        |     7,316            |
|      1          |      32        |      4        |     6,968            |
|      1          |      8         |     16        |     6,529            |
|      2          |      16        |      8        |    14,387            |
|      2          |      32        |      4        |    14,833            |
|      2          |       8        |     16        |    12,911            |
|      4          |      16        |      8        |    27,157            |
|      4          |      32        |      4        |    22,557            |
|      4          |       8        |     16        |    25,973            |
|      8          |      16        |      8        |    45,159            |
|      8          |      32        |      4        |    42,981            |
|      8          |       8        |     16        |    39,919            |

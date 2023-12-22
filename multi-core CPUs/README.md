# Using multi-core CPUs in a compute node

## Exercise 1.1: OpenMP multi-threading

For this exercise, LUMI-C was used.

System : STMV

No of atoms: 1066628

**Performance Analysis**

| Number of Nodes | Tasks per node | CPUs per task | Performance (ns/day) |
| ----------------|----------------|---------------|----------------------|
|      1          |      16        |      8        |     7,957            |
|      1          |      32        |      4        |     8,656            |
|      1          |      8         |     16        |     6,946            |
|      2          |      16        |      8        |    14,780            |
|      2          |      32        |      4        |    17,117            |
|      2          |       8        |     16        |    13,186            |

-- Creating a mirror table of the partitioned table without any partitions
SELECT *
INTO Sales.Orders_NoPartition
FROM Sales.Orders_Partitioned;

-- Writing queries on both tables and checking the execution plans
-- Query on Non-Partitioned Table
SELECT *
FROM
    Sales.Orders_NoPartition
WHERE
    OrderDate IN ('2026-01-01', '2025-12-31');

-- Query on Partitioned Table
SELECT *
FROM
    Sales.Orders_Partitioned
WHERE
    OrderDate IN ('2026-01-01', '2025-12-31');
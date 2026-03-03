SELECT
    NTILE(2) OVER (ORDER BY OrderID ASC) AS Buckets,
    *
FROM
    Sales.Orders
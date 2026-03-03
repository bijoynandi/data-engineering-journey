SELECT
    CustomerID,
    SUM(CASE
            WHEN Sales > 30 THEN 1
            ELSE 0
        END) AS HighSales,
    COUNT(*) AS OrderCount
FROM
    Sales.Orders
GROUP BY
    CustomerID
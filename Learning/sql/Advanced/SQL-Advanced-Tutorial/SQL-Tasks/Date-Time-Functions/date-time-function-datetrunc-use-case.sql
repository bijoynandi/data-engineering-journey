SELECT
    DATEFROMPARTS(MONTH, CreationTime) OrderMonth,
    COUNT(*) TotalOrders
FROM
    Sales.Orders
GROUP BY
    DATEFROMPARTS(MONTH, CreationTime)
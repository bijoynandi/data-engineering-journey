SELECT
    DATENAME(MONTH, OrderDate) OrderMonth,
    COUNT(*) NumberOfOrders
FROM
    Sales.Orders
GROUP BY
    DATENAME(MONTH, OrderDate)

WITH CTE_MonthlySummary AS
(
    SELECT
        DATEFROMPARTS(MONTH, OrderDate) AS OrderMonth,
        SUM(Sales) AS TotalSales,
        COUNT(OrderID) AS TotalOrders,
        SUM(Quantity) AS TotalQuantities
    FROM
        Sales.Orders
    GROUP BY
        DATEFROMPARTS(MONTH, OrderDate)
)
SELECT
    OrderMonth,
    TotalSales,
    SUM(TotalSales) OVER(ORDER BY OrderMonth) RunningTotal
FROM
    CTE_MonthlySummary
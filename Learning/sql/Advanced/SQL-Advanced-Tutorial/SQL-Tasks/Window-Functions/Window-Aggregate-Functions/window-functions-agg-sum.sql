SELECT
    OrderID,
    ProductID,
    Sales,
    SUM(Sales) OVER() AS TotalSales,
    CONCAT(ROUND(CAST(Sales AS FLOAT) / SUM(Sales) OVER() * 100, 2), '%') AS SalesPct
    FROM Sales.Orders
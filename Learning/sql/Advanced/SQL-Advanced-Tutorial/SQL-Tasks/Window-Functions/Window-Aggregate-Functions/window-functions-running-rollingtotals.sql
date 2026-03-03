SELECT
    OrderID,
    OrderDate,
    ProductID,
    Sales,
    AVG (Sales) OVER (PARTITION BY ProductID) AS AvgSalesPerProduct,
    AVG (Sales) OVER (PARTITION BY ProductID ORDER BY OrderDate) AS MovingAvg,
    AVG (Sales) OVER (PARTITION BY ProductID ORDER BY OrderDate ROWS BETWEEN CURRENT ROW AND 1 FOLLOWING) AS RollingAvg
FROM Sales.Orders
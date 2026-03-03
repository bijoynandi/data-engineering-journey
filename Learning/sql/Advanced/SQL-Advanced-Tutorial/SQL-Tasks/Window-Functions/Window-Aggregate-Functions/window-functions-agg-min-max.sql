SELECT
    OrderID,
    OrderDate,
    ProductID,
    Sales,
    MAX(Sales) OVER () MaxSales,
    MIN(Sales) OVER () MinSales,
    Sales - MIN(Sales) OVER () SalesDiffMin,
    MAX(Sales) OVER () - Sales SalesDiffMax
FROM
    Sales.Orders

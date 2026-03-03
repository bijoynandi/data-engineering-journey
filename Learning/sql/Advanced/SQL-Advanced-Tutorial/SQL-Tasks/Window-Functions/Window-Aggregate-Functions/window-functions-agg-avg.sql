SELECT *
FROM
    (
        SELECT
            OrderID,
            ProductID,
            Sales,
            AVG(Sales) OVER() AvgSales
        FROM
            Sales.Orders
    ) T
WHERE
    Sales > AvgSales
SELECT
    OrderID,
    OrderDate,
    Sales,
    RANK() OVER(ORDER BY Sales DESC) SalesRank
FROM
    Sales.Orders
SELECT
    CustomerID,
    SUM(Sales) TotalSales,
    RANK() OVER(ORDER BY SUM(Sales) DESC) SalesRank
FROM
    Sales.Orders
GROUP BY
    CustomerID
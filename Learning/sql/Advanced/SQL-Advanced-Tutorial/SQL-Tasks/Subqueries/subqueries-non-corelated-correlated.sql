-- correlated subquery
SELECT
    *,
    (SELECT COUNT(*) FROM Sales.Orders o WHERE o.CustomerID = c.CustomerID) AS OrderCount
FROM
    Sales.Customers c
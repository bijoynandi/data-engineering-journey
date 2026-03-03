SELECT
    c.*,
    o.OrderID
FROM
    Sales.Customers c
LEFT JOIN
    Sales.Orders o
ON
    c.CustomerID = o.CustomerID
WHERE
    o.CustomerID IS NULL
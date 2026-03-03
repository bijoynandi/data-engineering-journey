SELECT
    c.*,
    o.TotalOrders
FROM
   Sales.Customers c
LEFT JOIN
   (
    SELECT
        CustomerID,
        COUNT(*) AS TotalOrders
    FROM
        Sales.Orders
    GROUP BY
        CustomerID
   ) o
ON
   c.CustomerID = o.CustomerID
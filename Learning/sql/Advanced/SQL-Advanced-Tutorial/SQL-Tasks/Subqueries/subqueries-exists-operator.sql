-- EXISTS Operator
SELECT *
FROM
    Sales.Orders o
WHERE EXISTS (
                SELECT 1
                FROM
                    Sales.Customers c
                WHERE
                    Country = 'Germany'
                    AND o.CustomerID = c.CustomerID
                );

-- NOT EXISTS Operator
SELECT *
FROM
    Sales.Orders o
WHERE NOT EXISTS (
                SELECT 1
                FROM
                    Sales.Customers c
                WHERE
                    Country = 'Germany'
                    AND o.CustomerID = c.CustomerID
                );
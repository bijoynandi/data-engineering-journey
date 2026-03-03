SELECT
    o.Sales,
    c.Country
FROM
    Sales.Orders o
LEFT JOIN
    Sales.Customers c WITH ( INDEX ( PK__Customer__A4AE64B87FC20A48 ) )
ON
    o.CustomerID = c.CustomerID
-- OPTION (HASH JOIN); -- SQL Hints to force a hash join

CREATE NONCLUSTERED COLUMNSTORE INDEX IX_Customers_Country
ON Sales.Customers (Country);
SELECT 
    OrderID,
    Sales,
    Quantity,
    Sales / NULLIF(Quantity,0) AS SalesPerUnit
FROM
    Sales.Orders
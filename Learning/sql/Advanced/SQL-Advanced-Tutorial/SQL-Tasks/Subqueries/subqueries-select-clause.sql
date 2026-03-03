SELECT
   ProductID,
   Product,
   Price,
   ( SELECT COUNT(*) FROM Sales.Orders ) AS OrderCount
FROM
   Sales.Products
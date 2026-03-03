SELECT *,
   RANK() OVER(ORDER BY TotalSales DESC) AS SalesRank
FROM
   (
      SELECT
         CustomerID,
         SUM(Sales) AS TotalSales
      FROM
         Sales.Orders
      GROUP BY
         CustomerID
   ) t
SELECT
    OrderID,
    ProductID,
    Sales,
    ROW_NUMBER() OVER (ORDER BY Sales DESC) AS RowNumber,
    RANK()       OVER (ORDER BY Sales DESC) AS Rank,
    DENSE_RANK() OVER (ORDER BY Sales DESC) AS DenseRank
FROM
    Sales.Orders
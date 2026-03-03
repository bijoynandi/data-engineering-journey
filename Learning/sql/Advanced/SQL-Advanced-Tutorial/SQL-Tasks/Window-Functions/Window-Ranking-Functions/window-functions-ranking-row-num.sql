SELECT *
FROM
    (
    SELECT
        ROW_NUMBER() OVER (PARTITION BY OrderID ORDER BY CreationTime DESC) AS RowNumber,
        *
    FROM
        Sales.OrdersArchive
    ) AS TempTable
WHERE
    RowNumber = 1


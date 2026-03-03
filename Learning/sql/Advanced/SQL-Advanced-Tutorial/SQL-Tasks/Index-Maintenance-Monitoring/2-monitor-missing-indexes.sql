-- Using the AdventureWorksDW2022 Database
SELECT
    fs.SalesOrderNumber,
    dp.EnglishProductName,
    dp.Color
FROM
    FactInternetSales fs
JOIN
    DimProduct dp
ON
    fs.ProductKey = dp.ProductKey
WHERE
    dp.Color = 'Black'
    AND fs.OrderDateKey BETWEEN 20101229 AND 20101231;

-- Monitoring Missing Indexes and recommendations from sys.dm_db_missing_index_details
SELECT *
FROM
    sys.dm_db_missing_index_details;

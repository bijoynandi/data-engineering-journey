SELECT
    CAST('2025-08-20' AS DATETIME2) AS [String to Datetime2],
    CreationTime,
    CAST(CreationTime AS date) AS [Datetime to Date]
FROM
    Sales.Orders
SELECT
    CreationTime,
    CONVERT(DATE, CreationTime) AS [Date],
    CONVERT(VARCHAR, CreationTime, 32) AS [USA Std. Style:32],
    CONVERT(VARCHAR, CreationTime, 34) AS [EURO Std. Style:34],
    SQL_VARIANT_PROPERTY(CONVERT(VARCHAR, CreationTime), 'BaseType') AS [Date Type]
FROM
    Sales.Orders
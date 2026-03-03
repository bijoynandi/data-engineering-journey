SELECT
    OrderID,
    CreationTime,
    EOMONTH(CreationTime) AS EndOfMonth,
    CAST(DATEFROMPARTS(MONTH, CreationTime) AS DATE) AS StartOfMonth
FROM
    Sales.Orders
SELECT
    *
FROM
    (
        SELECT
            OrderID,
            COUNT(*) OVER (PARTITION BY OrderID) CheckPK
        FROM
            Sales.OrdersArchive
    ) AS T
WHERE
    CheckPK > 1
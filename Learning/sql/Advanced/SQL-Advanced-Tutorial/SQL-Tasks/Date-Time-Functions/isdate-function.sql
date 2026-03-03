SELECT
    OrderDate,
    SQL_VARIANT_PROPERTY(OrderDate, 'BaseType') DataType,
    ISDATE(OrderDate) AS IsDate,
    CASE WHEN ISDATE(OrderDate) = 1 THEN CAST(OrderDate AS DATE) ELSE NULL END NewOrderDate,
    SQL_VARIANT_PROPERTY(CASE WHEN ISDATE(OrderDate) = 1 THEN CAST(OrderDate AS DATE) ELSE NULL END, 'BaseType') DataType
    -- CAST(OrderDate AS DATE) NewOrderDate -- Error - Cannot convert data type varchar to date
    /*If you uncomment CAST(OrderDate AS DATE) without the CASE statement, 
    the query would fail completely due to a conversion error on the invalid date '2025-08'. 
    The CASE statement acts as a safeguard to prevent this error.*/
FROM
(
SELECT '2025-08-20' AS OrderDate UNION
SELECT '2025-08-21' UNION
SELECT '2025-08'
)t
-- WHERE
--     ISDATE(OrderDate) = 0
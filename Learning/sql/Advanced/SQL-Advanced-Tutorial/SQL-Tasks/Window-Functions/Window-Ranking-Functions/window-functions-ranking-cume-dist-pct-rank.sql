SELECT *,
    CONCAT(percent_rank * 100, '%') AS percent_rank_format
FROM
    (
    SELECT
        Product,
        Price,
        PERCENT_RANK() OVER(ORDER BY Price DESC) AS percent_rank
    FROM
        Sales.Products
    ) T
WHERE
    percent_rank <= 0.4
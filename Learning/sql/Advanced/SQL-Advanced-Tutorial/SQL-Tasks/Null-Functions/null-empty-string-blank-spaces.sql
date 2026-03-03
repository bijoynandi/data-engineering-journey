WITH Orders AS (
    SELECT 1 AS Id,
        'A' AS Category
    UNION
    SELECT 2,
        NULL
    UNION
    SELECT 3,
        ''
    UNION
    SELECT 4,
        '  '
)
SELECT *,
    DATALENGTH(Category) AS CatLen,
    TRIM(Category) AS CleanCat,
    DATALENGTH(TRIM(Category)) AS CleanCatLen,
    NULLIF(TRIM(Category), '') AS NullCat,
    DATALENGTH(NULLIF(TRIM(Category), '')) AS CleanCatLen1,
    COALESCE(NULLIF(TRIM(Category), ''), 'unknown') AS UnknownCat,
    DATALENGTH(COALESCE(NULLIF(TRIM(Category), ''), 'unknown')) AS UnknownCatLen
FROM Orders
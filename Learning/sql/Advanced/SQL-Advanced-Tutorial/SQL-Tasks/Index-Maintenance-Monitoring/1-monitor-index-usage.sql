-- List all indexes on a specific table
SP_HELPINDEX 'Sales.DBCustomers';

-- Monitoring Index Usage
SELECT *
FROM
    sys.indexes;

SELECT *
FROM
    sys.tables;

-- Dynamic Management view
SELECT *
FROM
    sys.dm_db_index_usage_stats;

-- Focus Monitoring on specific columns
SELECT
    tbl.name AS TableName,
    idx.name AS IndexName,
    idx.type_desc AS IndexType,
    idx.is_primary_key AS IsPrimaryKey,
    idx.is_unique AS IsUnique,
    idx.is_disabled AS IsDisabled,
    s.user_seeks AS UserSeeks,
    s.user_scans AS UserScans,
    s.user_lookups AS UserLookups,
    s.user_updates AS UserUpdates,
    COALESCE(s.last_user_seek, s.last_user_scan) AS LastUsed -- COALESCE is used to avoid NULL values as one of those columns can be NULL
FROM
    sys.indexes idx
JOIN
    sys.tables tbl
ON
    idx.object_id = tbl.object_id
LEFT JOIN
    sys.dm_db_index_usage_stats s
ON
    idx.object_id = s.object_id
    AND idx.index_id = s.index_id
ORDER BY
    tbl.name,
    idx.name;

-- Checking difference of Index Usage after executing a query that has a filtered index
SELECT *
FROM
    Sales.Products
WHERE
    Product = 'Caps';
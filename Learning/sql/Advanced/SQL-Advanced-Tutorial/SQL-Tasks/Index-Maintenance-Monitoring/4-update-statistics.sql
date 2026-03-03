-- Getting information about statistics
SELECT 
    SCHEMA_NAME(t.schema_id) AS SchemaName,
    t.name AS TableName,
    s.name AS StatisticName,
    sp.last_updated AS LastUpdate,
    DATEDIFF(DAY, sp.last_updated, GETDATE()) AS LastUpdateDay,
    sp.rows AS 'Rows',
    sp.modification_counter AS ModificationsSinceLastUpdate
FROM sys.stats AS s
JOIN sys.tables AS t
    ON s.object_id = t.object_id
CROSS APPLY sys.dm_db_stats_properties(s.object_id, s.stats_id) AS sp
ORDER BY sp.modification_counter DESC;

-- Updating a particular statistics for table Sales.DBCustomers
UPDATE STATISTICS Sales.DBCustomers _WA_Sys_00000005_3A4CA8FD;

-- Updating all statistics for table Sales.DBCustomers
UPDATE STATISTICS Sales.DBCustomers;

-- Updating all statistics for all tables in the database
EXEC sp_updatestats; -- stored procedure
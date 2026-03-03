-- Step 2: Create Filegroups
ALTER DATABASE SalesDB ADD FILEGROUP FG_2023;
ALTER DATABASE SalesDB ADD FILEGROUP FG_2024;
ALTER DATABASE SalesDB ADD FILEGROUP FG_2025;
ALTER DATABASE SalesDB ADD FILEGROUP FG_2026;

-- Query lists all existing Filegroups
SELECT *
FROM
    sys.filegroups
WHERE
    [type] = 'FG'; -- Filter by filegroup type
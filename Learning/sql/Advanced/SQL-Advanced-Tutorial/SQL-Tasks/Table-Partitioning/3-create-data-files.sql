-- Step 3: Add .ndf files to each Filegroup
-- File 1
ALTER DATABASE SalesDB ADD FILE
(
    NAME = P_2023, -- Logical File Name
    FILENAME = 'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\P_2023.ndf' -- Path for storing the data file together with the datafile name & extension
)
    TO FILEGROUP FG_2023;

-- File 2
ALTER DATABASE SalesDB ADD FILE
(
    NAME = P_2024, -- Logical File Name
    FILENAME = 'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\P_2024.ndf' -- Path for storing the data file together with the datafile name & extension
)
    TO FILEGROUP FG_2024;

-- File 3
ALTER DATABASE SalesDB ADD FILE
(
    NAME = P_2025, -- Logical File Name
    FILENAME = 'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\P_2025.ndf' -- Path for storing the data file together with the datafile name & extension
)
    TO FILEGROUP FG_2025;

-- File 4
ALTER DATABASE SalesDB ADD FILE
(
    NAME = P_2026, -- Logical File Name
    FILENAME = 'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\P_2026.ndf' -- Path for storing the data file together with the datafile name & extension
)
    TO FILEGROUP FG_2026;

-- Query lists all existing Files
SELECT
    fg.name AS FilegroupName,
    mf.name AS LogicalFileName,
    mf.physical_name AS PhysicalFileName,
    mf.size / 128 AS SizeInMB
FROM
    sys.filegroups fg
JOIN
    sys.master_files mf
ON
    fg.data_space_id = mf.data_space_id
WHERE
    mf.database_id = DB_ID('SalesDB');
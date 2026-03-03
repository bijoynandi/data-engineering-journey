-- Using AdventureWorksDW2022 Database
USE AdventureWorksDW2022;
--  1. HEAP Structure
SELECT *
INTO FactInternetSales_HP
FROM
    FactInternetSales;

-- Creating table for Clustered RowStore Index
SELECT *
INTO FactInternetSales_RS
FROM
    FactInternetSales;

-- 2. Creating Clustered RowStore Index
CREATE CLUSTERED INDEX idx_FactInternetSales_RS_PK
ON
    FactInternetSales_RS (SalesOrderNumber, SalesOrderLineNumber);

-- Creating table for Clustered ColumnStore Index
SELECT *
INTO FactInternetSales_CS
FROM
    FactInternetSales;

-- 3. Creating Clustered ColumnStore Index
CREATE CLUSTERED COLUMNSTORE INDEX idx_FactInternetSales_CS_PK
ON
    FactInternetSales_CS;
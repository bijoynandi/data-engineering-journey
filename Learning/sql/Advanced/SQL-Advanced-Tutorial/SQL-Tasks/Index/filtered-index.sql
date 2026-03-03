-- Retrieving data from the table DBCustomers
SELECT *
FROM
    Sales.DBCustomers
WHERE
    Country = 'USA';

-- Creating Filtered Index on the table DBCustomers
CREATE NONCLUSTERED INDEX idx_DBCustomers_Country
ON
    Sales.DBCustomers(Country)
WHERE
    Country = 'USA';

-- Dropping Filtered Index from the table DBCustomers
DROP INDEX idx_DBCustomers_Country
ON
    Sales.DBCustomers;
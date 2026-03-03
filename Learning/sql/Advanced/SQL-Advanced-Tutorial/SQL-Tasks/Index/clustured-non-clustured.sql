SELECT *
FROM
    Sales.DBCustomers
WHERE
    Country = 'USA' AND Score > 500;

CREATE INDEX idx_DBCustomers_CountryScore
ON
    Sales.DBCustomers(Country, Score);

SELECT *
FROM
    Sales.DBCustomers
WHERE
    Country = 'USA';
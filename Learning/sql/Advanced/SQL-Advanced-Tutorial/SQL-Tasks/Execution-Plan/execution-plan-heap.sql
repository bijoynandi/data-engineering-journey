-- Using AdventureWorksDW2022 Database
-- Creating a mirror of the FactResellerSales table but without any indexes
SELECT *
INTO FactResellerSales_HP
FROM
    FactResellerSales;

-- Executing the newly created table
SELECT *
FROM
    FactResellerSales_HP
WHERE
    CarrierTrackingNumber = '4911-403C-98';
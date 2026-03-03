-- Step 1: Write a query
-- For US Customers find the total number of customers and the average score
SELECT
    COUNT(*) TotalCustomers,
    AVG(Score) AvgScore
FROM
    Sales.Customers
WHERE
    Country = 'USA';
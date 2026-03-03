-- Step 2: Turning the query into a stored procedure
CREATE PROCEDURE GetCustomerSummary AS
BEGIN
    SELECT
        COUNT(*) TotalCustomers,
        AVG(Score) AvgScore
    FROM
        Sales.Customers
    WHERE
        Country = 'USA'
END;
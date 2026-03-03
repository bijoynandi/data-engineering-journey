-- Using parameter and updating the stored procedure
ALTER PROCEDURE GetCustomerSummary @Country NVARCHAR(50) AS
BEGIN
    SELECT
        COUNT(*) TotalCustomers,
        AVG(Score) AvgScore
    FROM
        Sales.Customers
    WHERE
        Country = @Country
END;
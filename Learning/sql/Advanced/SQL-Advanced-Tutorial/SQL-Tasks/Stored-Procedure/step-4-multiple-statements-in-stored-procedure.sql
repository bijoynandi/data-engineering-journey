-- Using multiple queries inside stored procedure
ALTER PROCEDURE GetCustomerSummary @Country NVARCHAR(50) = 'USA' AS
BEGIN
-- For US Customers find the total number of customers and the average score (Query 1)
    SELECT
        COUNT(*) TotalCustomers,
        AVG(Score) AvgScore
    FROM
        Sales.Customers
    WHERE
        Country = @Country;

-- Find the total number of orders and total sales (Query 2)
    SELECT
        COUNT(OrderID) TotalOrders,
        SUM(Sales) TotalSales
    FROM
        Sales.Orders o
    JOIN
        Sales.Customers c
    ON
        o.CustomerID = c.CustomerID
    WHERE
        Country = @Country;
END;

-- Execute the stored procedure (Default Value)
EXEC GetCustomerSummary;

-- Execute the stored procedure (Using parameter)
EXEC GetCustomerSummary @Country = 'Germany';
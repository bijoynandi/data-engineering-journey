-- Using control flow (IF ELSE) inside stored procedure
ALTER PROCEDURE GetCustomerSummary @Country NVARCHAR(50) = 'USA' AS
BEGIN
    DECLARE @TotalCustomers INT, @AvgScore FLOAT; -- Step 1: Declare Variables

    -- For US Customers find the total number of customers and the average score (Query 1)
    --Prepare and cleanup data (Control Flow)
    IF EXISTS ( SELECT 1 from Sales.Customers WHERE Score IS NULL AND Country = @Country )
    BEGIN
        PRINT ('Updating NULL Scores to 0');
        UPDATE Sales.Customers
        SET Score = 0
        WHERE Score IS NULL
        AND Country = @Country;
    END;

    ELSE
    BEGIN
        PRINT ('No NULL Scores found');
    END

    -- Generating Reports
    SELECT
        @TotalCustomers = COUNT(*), -- Step 2: Assign Variables
        @AvgScore = AVG(Score) -- Step 2: Assign Variables
    FROM
        Sales.Customers
    WHERE
        Country = @Country;
    PRINT ('Total Customers from ' + @Country + ': ' + CAST(@TotalCustomers AS NVARCHAR)); -- Step 3: Use Variables
    PRINT ('Average Score from ' + @Country + ': ' + CAST(@AvgScore AS NVARCHAR)); -- Step 3: Use Variables

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
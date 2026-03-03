-- Step 1 - Find the total sales per customer
-- Defining the CTE (Standalone CTE)
WITH CTE_TotalSales AS
(
    SELECT
        CustomerID,
        SUM(Sales) TotalSales
    FROM
        Sales.Orders
    GROUP BY
        CustomerID
)
-- Step 2 - Find the last order date for each customer
-- Defining the CTE (Standalone CTE)
, CTE_LastOrder AS
(
    SELECT
        CustomerID,
        MAX(OrderDate) LastOrderDate
    FROM
        Sales.Orders
    GROUP BY
        CustomerID
)
--Step 3 - Rank Customers based on Total Sales per Customer
-- Defining the CTE (Nested CTE)
, CTE_CustomerRank AS
(
    SELECT
        CustomerID,
        TotalSales,
        RANK() OVER(ORDER BY TotalSales DESC) CustomerRank
    FROM
        CTE_TotalSales
)
-- SELECT * FROM CTE_CustomerRank -- Execute the CTE_CustomerRank to see the result of the nested CTE and commenting out the main query

-- Step 4 - Segment Customers based on their Total Sales
-- Defining the CTE (Nested CTE)
, CTE_CustomerSegment AS
(
    SELECT
        CustomerID,
        TotalSales,
        CASE 
            WHEN TotalSales > 100 THEN 'High'
            WHEN TotalSales > 80 THEN 'Medium'
            ELSE 'Low'
        END CustomerSegment
    FROM
        CTE_TotalSales
)
-- SELECT * FROM CTE_CustomerSegment -- Execute the CTE_CustomerSegment to see the result of the nested CTE and commenting out the main query

-- Main Query (Using the CTEs)
SELECT
    c.CustomerID,
    c.FirstName,
    c.LastName,
    cts.TotalSales,
    clo.LastOrderDate,
    ccr.CustomerRank,
    ccs.CustomerSegment
FROM
    Sales.Customers c
LEFT JOIN
    CTE_TotalSales cts
ON
    c.CustomerID = cts.CustomerID
LEFT JOIN
    CTE_LastOrder clo -- Joining the CTE_LastOrder as the right table with the combined result set of Customers and CTE_TotalSales as the left table
ON
    c.CustomerID = clo.CustomerID
LEFT JOIN
    CTE_CustomerRank ccr
ON
    c.CustomerID = ccr.CustomerID
LEFT JOIN
    CTE_CustomerSegment ccs
ON
    c.CustomerID = ccs.CustomerID
CREATE VIEW Sales.V_Order_Details AS
(
    SELECT
        o.OrderID,
        o.OrderDate,
        p.Product,
        p.Category,
        COALESCE(c.FirstName, '') + ' ' + COALESCE(c.LastName, '') AS CustomerName, -- COALESCE is used to avoid NULL values
        c.Country CustomerCountry,
        COALESCE(e.FirstName, '') + ' ' + COALESCE(e.LastName, '') AS SalesPersonName,
        e.Department,
        o.Sales,
        o.Quantity
    FROM
        Sales.Orders o -- Central Table that connects all tables
    LEFT JOIN
        Sales.Products p
    ON
        o.ProductID = p.ProductID
    LEFT JOIN
        Sales.Customers c
    ON
        o.CustomerID = c.CustomerID
    LEFT JOIN
        Sales.Employees e
    ON
        o.SalesPersonID = e.EmployeeID
)
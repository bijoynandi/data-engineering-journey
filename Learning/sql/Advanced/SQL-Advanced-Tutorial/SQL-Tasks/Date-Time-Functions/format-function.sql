SELECT
    FORMAT(OrderDate, 'MMM yy') MonthYear,
    COUNT(*) NumberOfOrders
FROM
    Sales.Orders
GROUP BY
    FORMAT(OrderDate, 'MMM yy')
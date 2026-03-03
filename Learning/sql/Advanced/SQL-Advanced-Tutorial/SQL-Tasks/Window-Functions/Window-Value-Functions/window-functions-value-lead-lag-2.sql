SELECT
    CustomerID,
    AVG(LeadDays) AvgLeadDays,
    RANK() OVER(ORDER BY COALESCE(AVG(LeadDays), 9999999))  RankAvgDates -- Replacing/ Handling the NULL values with 9999999 to make the rank calculation not to rank NULL values on top
FROM
    (
        SELECT
            OrderID,
            CustomerID,
            OrderDate CurrentDate,
            LEAD(OrderDate) OVER(PARTITION BY CustomerID ORDER BY OrderDate) NextOrder,
            DATEDIFF(DAY, OrderDate, LEAD(OrderDate) OVER(PARTITION BY CustomerID ORDER BY OrderDate)) LeadDays
        FROM
            Sales.Orders
    ) AS DerivedTables
GROUP BY
    CustomerID
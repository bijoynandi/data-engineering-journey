SELECT
    OrderID,
    OrderDate,
    DATEADD(DAY, 10, OrderDate) AS DeliveryDay,
    DATEADD(MONTH, 5, OrderDate) AS DeliveryMonth,
    DATEADD(QUARTER, -2, OrderDate) AS DeliveryQuarter,
    DATEADD(YEAR, 3, OrderDate) AS DeliveryYear
FROM
    Sales.Orders
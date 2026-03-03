SELECT
    OrderID,
    OrderDate,
    ProductID,
    OrderStatus,
    Sales,
    SUM(Sales) OVER() Total_Sales,
    SUM(Sales) OVER(PARTITION BY ProductID) Total_Sales_by_Products,
    SUM(Sales) OVER(PARTITION BY ProductID, OrderStatus) Total_Sales_by_Products_and_Status
FROM
    Sales.Orders;
SELECT *,
    CurrentMonthSales - PreviousMonthSales AS MoM_Change,
    ROUND(CAST((CurrentMonthSales - PreviousMonthSales) AS FLOAT) / PreviousMonthSales * 100, 2) MoM_PctChange
FROM
    (
    SELECT
        MONTH(OrderDate) OrderMonth,
        SUM(Sales) CurrentMonthSales,
        LAG(SUM(Sales)) OVER (ORDER BY MONTH(OrderDate)) PreviousMonthSales
    FROM
        Sales.Orders
    GROUP BY
        MONTH(OrderDate)
    ) AS SalesByMonth
SELECT
    OrderMonth,
    TotalSales,
    SUM(TotalSales) OVER(ORDER BY OrderMonth) RunningTotal
FROM
    Sales.V_Monthly_Summary
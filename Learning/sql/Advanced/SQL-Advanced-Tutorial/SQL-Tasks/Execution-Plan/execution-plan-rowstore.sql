SELECT
    p.EnglishProductName ProductName,
    SUM(s.SalesAmount) TotalSales
FROM
    FactResellerSales s
JOIN
    DimProduct p
ON
    s.ProductKey = p.ProductKey
GROUP BY
    p.EnglishProductName;

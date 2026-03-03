SELECT
    p.EnglishProductName ProductName,
    SUM(s.SalesAmount) TotalSales
FROM
    FactResellerSales_HP s
JOIN
    DimProduct p
ON
    s.ProductKey = p.ProductKey
GROUP BY
    p.EnglishProductName;

-- Create a Clustered Columnstore Index
CREATE CLUSTERED COLUMNSTORE INDEX idx_FactResellerSalesHP
ON
    FactResellerSales_HP;

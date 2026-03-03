SELECT
    ProductID,
    Price
FROM
    Sales.Products
WHERE Price > (
                SELECT
                    AVG(Price) AvgSales
                FROM
                    Sales.Products
            )
SELECT *
FROM
    Sales.Products;

CREATE UNIQUE NONCLUSTERED INDEX Idx_Products_Product
ON Sales.Products(Product);

INSERT INTO Sales.Products (ProductID, Product)
VALUES(106, 'Bottle');
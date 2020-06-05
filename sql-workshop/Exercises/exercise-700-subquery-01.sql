SHOW DATABASES;

USE packt_online_shop;

SHOW TABLES;

SHOW COLUMNS FROM products;

SHOW COLUMNS FROM orderitems;

-- Suppose a Packt manager wants a list of products that have zero sales.
SELECT products.ProductID, products.ProductName, products.ProductCategoryID
FROM products
WHERE ProductID NOT IN (
	SELECT ProductID
    FROM orderitems
);
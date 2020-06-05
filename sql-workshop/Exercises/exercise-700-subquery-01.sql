SHOW DATABASES;

USE packt_online_shop;

SHOW TABLES;

SHOW COLUMNS FROM products;

SHOW COLUMNS FROM orderitems;

-- Suppose a Packt manager wants a list of products that have zero sales.

-- Using a SUBQUERY
SELECT products.ProductID, products.ProductName, products.ProductCategoryID
FROM products
WHERE products.ProductID NOT IN (
	SELECT orderitems.ProductID
    FROM orderitems
)
ORDER BY products.ProductID;

-- Using a regular query
SELECT products.ProductID, products.ProductName, products.ProductCategoryID
FROM products 
LEFT OUTER JOIN orderitems
ON products.ProductID = orderitems.PRODUCTID
WHERE orderitems.ProductID IS NULL
ORDER BY products.ProductID;
	
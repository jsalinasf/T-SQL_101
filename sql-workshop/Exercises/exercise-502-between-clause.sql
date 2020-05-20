SHOW DATABASES;

USE packt_online_shop;

SHOW TABLES;

SHOW COLUMNS FROM products;

SELECT ProductName AS 'mid-priced items', NetRetailPrice
FROM products
WHERE NetRetailPrice BETWEEN 14.99 AND 50
ORDER BY NetRetailPrice;
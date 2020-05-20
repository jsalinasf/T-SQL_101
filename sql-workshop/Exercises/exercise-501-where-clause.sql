SHOW DATABASES;

USE packt_online_shop;

SHOW TABLES;

SHOW COLUMNS FROM products;

SELECT ProductName AS 'High-Value Products'
FROM Products
WHERE NetRetailPrice > 14.99;
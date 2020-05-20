SHOW DATABASES;

USE packt_online_shop;

SHOW TABLES;

SHOW COLUMNS FROM products;

SELECT ProductName AS 'High-Value Products'
FROM Products
WHERE NetRetailPrice > 14.99;

SELECT ProductName AS 'High-Value Products'
FROM Products
WHERE NetRetailPrice >= 14.99;

SELECT ProductName AS 'High-Value Products'
FROM Products
WHERE NetRetailPrice BETWEEN 14.99 AND 1000000;
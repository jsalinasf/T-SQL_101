SHOW DATABASES;

USE packt_online_shop;

SHOW TABLES;

SHOW COLUMNS FROM products;

--  not equal operators use any one of these operators: '!=' or '<>'

SELECT ProductName,NetRetailPrice
FROM products
WHERE ProductName != 'tomato sauce'
ORDER BY NetRetailPrice;

SELECT ProductName,NetRetailPrice
FROM products
WHERE ProductName <> 'tomato sauce'
ORDER BY NetRetailPrice;
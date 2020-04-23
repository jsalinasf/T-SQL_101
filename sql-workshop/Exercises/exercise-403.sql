USE packt_online_shop;

-- SHOW COLUMNS IN products;

SELECT ProductName, NetRetailPrice
FROM products
ORDER BY NetRetailPrice DESC
LIMIT 5;


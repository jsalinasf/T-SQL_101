USE packt_online_shop;
SHOW COLUMNS IN products;

SELECT ProductName, NetRetailPrice, AvailableQuantity, (AvailableQuantity * NetRetailPrice) AS 'Price'
FROM products
ORDER BY Price DESC
LIMIT 5;


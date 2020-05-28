USE packt_online_shop;

-- As store manager, you need to generate a report that shows the following columns: product name, product retail price, available quantity, and total price of available quantity.

-- However, you are asked to only include products that meet the following conditions:

--     A net retail price that is lower than or equal to 24.99
--     An available quantity that is at least 38 items
--     A product name that doesn't start with 10

SHOW COLUMNS FROM products;

SELECT 
	ProductName AS 'ProductName', 
    NetRetailPrice AS 'Retail Price', 
    AvailableQuantity AS 'Available QTY'
FROM products
WHERE NetRetailPrice <= 24.99 AND AvailableQuantity > 38 AND NOT ProductName LIKE '10%';
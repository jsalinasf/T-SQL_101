-- The store manager notices that there are some complaints about incorrectly priced orders by customers. 
-- He wants a report that contains the order's details, along with the product prices, 
-- in order to investigate this issue. Write a query to obtain such a result.

USE packt_online_shop;

SHOW COLUMNS FROM orders;
SHOW COLUMNS FROM orderitems;
SHOW COLUMNS FROM products;

SELECT orders.OrderNumber AS 'Order Nro', orderitems.UnitPrice AS 'Order Unit Price', products.ProductName AS 'Product Name', products.NetRetailPrice AS 'Net Retail Price'
FROM orders 
	INNER JOIN orderitems ON orders.OrderID = orderitems.OrderID
    INNER JOIN products ON orderitems.ProductID = products.ProductID
ORDER BY orders.OrderNumber;
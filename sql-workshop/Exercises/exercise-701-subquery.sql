USE packt_online_shop;

SHOW TABLES;

SHOW COLUMNS FROM orders;

SHOW COLUMNS FROM orderitems;

-- In this exercise, we will use a subquery to find the orders (as OrderID values) 
-- for the orders with no related rows in the OrderItems table

-- Using a SUBQUERY
SELECT orders.OrderID, orders.CustomerID, orders.OrderNumber, orders.OrderDate
FROM orders
WHERE orders.OrderID NOT IN (
	SELECT orderitems.OrderID FROM orderitems
);

-- Using a Regular Query
SELECT orders.OrderID, orders.CustomerID, orders.OrderNumber, orders.OrderDate
FROM orders
LEFT OUTER JOIN orderitems
ON orders.OrderID = orderitems.OrderID
WHERE orderitems.OrderID IS NULL;
-- Consider you have been asked to generate an invoice for the Packt Online Shop.

-- To do this, you need to build a view that returns an order ID, product ID, item quantity, 
-- unit price, subtotal (as item quantity * unit price) for each item, 
-- and the subtotal category columns for the customers who have a last name of Atreides. 
-- Consider the following rules for the subtotal category:

--     If Subtotal is less than $25.00, Subtotal Category is Small.
--     If Subtotal is less than or equal to $79.99, Subtotal Category is Medium.
--     If Subtotal exceeds $79.99, Subtotal Category is Large.

USE packt_online_shop;

SHOW COLUMNS FROM orders;

DROP VIEW IF EXISTS PACKT_VIEW_2;

CREATE VIEW PACKT_VIEW_2
AS
SELECT 
	CONCAT(customers.FirstName,' ' ,customers.LastName) AS 'CustomerName',
	orders.OrderID,
    orderitems.ProductID,
    products.ProductName,
    orderitems.Quantity,
    orderitems.UnitPrice,
    orderitems.Quantity * orderitems.UnitPrice AS 'Subtotal',
    CASE
		WHEN (orderitems.Quantity * orderitems.UnitPrice) < 25.00 THEN 'Small'
        WHEN (orderitems.Quantity * orderitems.UnitPrice) >= 25.00 AND (orderitems.Quantity * orderitems.UnitPrice) <= 79.99 THEN 'Medium'
        ELSE 'Large'
    END
    AS 'SubtotalCategory'
FROM customers
	INNER JOIN orders
    ON customers.CustomerID = orders.CustomerID
	INNER JOIN orderitems
    ON orders.OrderID = orderitems.OrderID
    INNER JOIN products
    ON orderitems.ProductID = products.ProductID;
    
SELECT *
FROM PACKT_VIEW_2
WHERE SubtotalCategory = 'Large';
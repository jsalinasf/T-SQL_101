-- Consider you have been asked to generate an invoice for the Packt Online Shop.

-- To do this, you need to build a view that returns an order ID, product ID, item quantity, 
-- unit price, subtotal (as item quantity * unit price) for each item, 
-- and the subtotal category columns for the customers who have a last name of Atreides. 
-- Consider the following rules for the subtotal category:

--     If Subtotal is less than $25.00, Subtotal Category is Small.
--     If Subtotal is less than or equal to $79.99, Subtotal Category is Medium.
--     If Subtotal exceeds $79.99, Subtotal Category is Large.

USE packt_online_shop;

DROP VIEW IF EXISTS Hopper_Sales_View;

CREATE VIEW Hopper_Sales_View
AS
SELECT 
    orderitems.ProductID,
    orderitems.Quantity,
    orderitems.UnitPrice,
    orderitems.Quantity * orderitems.UnitPrice AS 'Subtotal',
    CASE
		WHEN (orderitems.Quantity * orderitems.UnitPrice) < 25.00 THEN 'Small'
        WHEN (orderitems.Quantity * orderitems.UnitPrice) <= 79.99 THEN 'Medium'
        ELSE 'Large'
    END
    AS 'SubtotalCategory'
FROM orderitems
	INNER JOIN orders
    ON orderitems.OrderID = orders.OrderID
WHERE orders.CustomerID IN (
	SELECT customers.CustomerID FROM customers WHERE customers.LastName = 'Hopper'
);
    
SELECT *
FROM Hopper_Sales_View;

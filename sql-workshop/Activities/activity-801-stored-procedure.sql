USE packt_online_shop;

DROP PROCEDURE IF EXISTS spFilterOrdersByItemQuantity;

-- CREATE PROCEDURE spFilterOrdersByItemQuantity
-- (IN itemLimit INT)
-- 	SELECT O.OrderNumber, SUM(I.Quantity) AS 'Total Item Qty'
-- 	FROM orders O
-- 	INNER JOIN orderitems I
-- 	ON O.OrderID = I.OrderID
-- 	GROUP BY O.OrderNumber
-- 	HAVING SUM(I.Quantity) > itemLimit
-- 	ORDER BY O.OrderNumber;
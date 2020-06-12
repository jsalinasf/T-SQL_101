USE packt_online_shop;

DROP PROCEDURE IF EXISTS spOrderItemQuantities;

CREATE PROCEDURE spOrderItemQuantities
(IN itemLimit INT)
	SELECT O.OrderNumber, SUM(I.Quantity)
	FROM orders O
	INNER JOIN orderitems I
	ON O.OrderID = I.OrderID
	GROUP BY O.OrderNumber
	HAVING SUM(I.Quantity) > itemLimit
	ORDER BY O.OrderNumber;
CREATE PROCEDURE `spFilterOrdersByItemQuantity` (IN orderItemQuantityVal INT)
BEGIN
	SELECT O.OrderNumber, SUM(OI.Quantity) AS 'Total Item Qty'
	FROM orders O
	INNER JOIN orderitems OI
	ON O.OrderID = OI.OrderID
	GROUP BY O.OrderNumber
	HAVING SUM(OI.Quantity) > orderItemQuantityVal
	ORDER BY O.OrderNumber;
END
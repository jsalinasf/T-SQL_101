USE packt_online_shop;

SET @custID = 3;

SELECT 
	C.customerID, O.OrderID, O.OrderNumber, SUM((I.Quantity * (I.UnitPrice - I.Discount))) AS 'SalesRevenue'
FROM customers C
INNER JOIN orders O
ON c.CustomerID = O.customerID
INNER JOIN orderitems I
ON O.OrderID = I.OrderID
WHERE C.customerID = @custID
GROUP BY 'SalesRevenue';


-- select * from orderitems;
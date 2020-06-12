USE packt_online_shop;

SELECT O.OrderNumber, SUM(I.Quantity)
FROM orders O
INNER JOIN orderitems I
ON O.OrderID = I.OrderID
GROUP BY O.OrderNumber
HAVING SUM(I.Quantity) > 4
ORDER BY O.OrderNumber;
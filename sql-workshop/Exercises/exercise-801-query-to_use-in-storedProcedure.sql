USE packt_online_shop;

SELECT 
	CONCAT(C.FirstName,' ',C.LastName) AS 'CustomerName',
    O.OrderNumber,
    O.OrderDate
FROM customers C
INNER JOIN orders O
ON C.CustomerID = O.CustomerID
WHERE O.OrderDate <= '2020-06-10'
ORDER BY CustomerName;

CREATE PROCEDURE `spCustomerOrders` (IN orderDate DATE)
BEGIN
	SELECT 
		CONCAT(C.FirstName,' ',C.LastName) AS 'CustomerName',
		O.OrderNumber,
		O.OrderDate
	FROM customers C
	INNER JOIN orders O
	ON C.CustomerID = O.CustomerID
	WHERE O.OrderDate <= orderDate
	ORDER BY CustomerName;

END

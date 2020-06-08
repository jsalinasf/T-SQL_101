USE packt_online_shop;

SELECT 
	customers.CustomerID,
	CONCAT(customers.FirstName,' ',customers.LastName) AS 'Customer Name',
    orders.OrderDate,
    products.ProductID,
    products.ProductName,
    
FROM customers
	INNER JOIN orders
    ON customers.CustomerID = orders.CustomerID
    INNER JOIN orderitems
    ON orders.OrderID = orderitems.OrderID
    INNER JOIN products
    ON orderitems.ProductID = products.ProductID
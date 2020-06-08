USE packt_online_shop;

CREATE VIEW PACKT_VIEW_1
AS
SELECT 
	customers.CustomerID,
	CONCAT(customers.FirstName,' ',customers.LastName) AS 'Customer Name',
    orders.OrderDate,
    products.ProductID,
    products.ProductName,
    orderitems.UnitPrice,
    orderitems.Quantity,
    orderitems.Quantity * orderitems.UnitPrice AS 'PerProductSpending'
FROM customers
	INNER JOIN orders
    ON customers.CustomerID = orders.CustomerID
    INNER JOIN orderitems
    ON orders.OrderID = orderitems.OrderID
    INNER JOIN products
    ON orderitems.ProductID = products.ProductID;
    
SELECT CustomerID, OrderDate, ProductID, PerProductSpending
FROM PACKT_VIEW_1
WHERE PerProductSpending > 14.99;
USE packt_online_shop;

CREATE VIEW CUSTOMER_PRODUCT_VIEW
AS 
SELECT CONCAT(customers.FirstName, ' ',customers.LastName) AS 'Customer Name', orders.OrderDate, products.ProductName
FROM customers 
	INNER JOIN orders
    ON customers.CustomerID = orders.CustomerID
    INNER JOIN orderitems
    ON orders.OrderID = orderitems.OrderID
    INNER JOIN products
    ON orderitems.ProductID = products.ProductID;
    
SELECT *
FROM CUSTOMER_PRODUCT_VIEW;
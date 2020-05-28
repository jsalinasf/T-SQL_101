USE packt_online_shop;

SELECT orders.OrderNumber, orders.OrderStatus, orders.OrderDate, customers.FirstName, customers.LastName, customers.Email, customers.Phone
FROM orders JOIN customers
ON orders.CustomerID = customers.CustomerID;



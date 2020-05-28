USE packt_online_shop;

SELECT customers.FirstName, customers.LastName, customers.Email, orders.OrderNumber, orders.OrderDate, orders.OrderStatus
FROM orders RIGHT JOIN customers
ON orders.CustomerID = customers.CustomerID;

-- To extract a list of customers who haven't placed any orders from the store, enter the following query:
SELECT customers.FirstName, customers.LastName, customers.Email, orders.OrderNumber, orders.OrderDate, orders.OrderStatus
FROM orders RIGHT JOIN customers
ON orders.CustomerID = customers.CustomerID
WHERE orders.OrderNumber IS NULL;

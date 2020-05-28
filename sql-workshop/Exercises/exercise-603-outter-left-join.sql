USE packt_online_shop;

SHOW TABLES;

SHOW COLUMNS FROM payments;

SELECT orders.OrderNumber, orders.OrderStatus, payments.PaymentRef, payments.PaymentType, payments.Amount
FROM payments LEFT JOIN orders
ON payments.orderID = orders.OrderID;
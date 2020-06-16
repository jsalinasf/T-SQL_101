USE packt_online_shop;

INSERT INTO	OrderItems(OrderID, ProductID, Quantity, UnitPrice, Discount, Notes)
VALUES(1, 5, 23, 14.99, 0.00, "Insert Statement");

SELECT	P.*
FROM	Products P
WHERE	P.ProductID = 5;


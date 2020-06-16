INSERT INTO	OrderItems(OrderID, ProductID, Quantity,
							UnitPrice, Discount, Notes)
					VALUES(1, 6, 12, 4.49, 0.00, NULL);
					SELECT	C.BalanceNotes
					FROM	Customers C
					WHERE	C.CustomerID = 2;
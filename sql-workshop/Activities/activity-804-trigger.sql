/*
If an insert into the OrderItems table would bring 
the Products table's AvailableQuantity column below five for that product,
update the Products table's Notes column with a warning message.

As a result of the OrderItems table insert, the warning message should explain 
that the available quantity for that product will drop below five.
*/

USE packt_online_shop;

# DROP TRIGGER IF EXISTS tr_OrderItems_updateProducts_OnInsert;

DELIMITER $$

#	Basic syntax to create the tr_OrderItems_updateProducts_OnInsert
#	to fire after every OrderItems table row insertion.

CREATE TRIGGER tr_OrderItems_updateProducts_OnInsert AFTER INSERT ON OrderItems
	FOR EACH ROW
	BEGIN
    
		/*
			To test:
            INSERT INTO	OrderItems(OrderID, ProductID, Quantity, UnitPrice, Discount, Notes)
			VALUES(1, 5, 23, 14.99, 0.00, "Insert Statement");
            
            SELECT	P.*
			FROM	Products P
			WHERE	P.ProductID = 5;
		*/
	
	#	Assign the needed variable values, in order.
	#	SELECT the values and assign then to the
	#	variables with the SET command. For this,
	#	place all SELECT statements in parentheses.
	
    
    DECLARE ProductID INT;
    DECLARE RequestedQuantity INT;
    DECLARE RemainingQuantity INT;
    
    SET ProductID = (
		SELECT NEW.ProductID
	);
    
    SET RequestedQuantity = (
		SELECT NEW.Quantity
	);
    
    SET RemainingQuantity = (
		SELECT  (P.AvailableQuantity - RequestedQuantity)
		FROM Products P
		WHERE P.ProductID = ProductID
    );
    
    IF (RemainingQuantity < 5) THEN
		UPDATE 
        Products
        SET Products.Notes = "Warning: Remaining items below threshold";
    END IF;
        
    END$$
DELIMITER ;
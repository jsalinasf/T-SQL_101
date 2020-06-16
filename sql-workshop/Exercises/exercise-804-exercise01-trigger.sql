USE packt_online_shop;

# drop trigger tr_Products_OnInsert 

DELIMITER $$

#	Basic syntax to create the tr_Products_OnInsert trigger
#	to fire after every OrderItems table row insertion.

CREATE TRIGGER tr_Products_OnInsert AFTER INSERT ON Products
FOR EACH ROW
BEGIN

	/*
		To test:	INSERT INTO 	Products(ProductCategoryID, SupplierID,
						ProductName, ProductImage, NetRetailPrice,
						AvailableQuantity, WholesalePrice,
						UnitKGWeight, Notes)

				VALUES(3, 3, 'peanut butter', NULL, 3.79, 1000, 2.69,
						0.75, 'caution: high calorie');

				SELECT	P.*
				FROM	Products P
				WHERE	P.SupplierID = 3;
	*/	
    
	DECLARE	supplierID   INT;
	DECLARE	supplierProductCount INT;
	DECLARE	supplierCountText VARCHAR(1000);

	#	The "NEW" table has the SupplierID
	#	value we'll need

		SET	supplierID = (
						SELECT NEW.supplierID
					);

	#	Calculate the supplier product count,
	#	and convert the value to TEXT

		SET	supplierProductCount = (
							SELECT	COUNT(P.ProductID)
							FROM	Products P INNER JOIN
								Suppliers S ON
								P.SupplierID = S.SupplierID
							WHERE	S.SupplierID = supplierID
						);

		SET	supplierCountText = (
							SELECT CONCAT("This supplier (Supplier ", CAST(supplierID AS CHAR), ")")
						);

		SET	supplierCountText = (
							SELECT CONCAT(supplierCountText, " has ", CAST(supplierProductCount AS CHAR))
						);

		SET	supplierCountText = (
							SELECT CONCAT(supplierCountText, " products available here at Packt as of ")
						);
		
		SET	supplierCountText = (
							SELECT CONCAT(supplierCountText, DATE_FORMAT(NOW(), "%b %d, %Y"))
						);

		

	#	Update the Customers.BalanceNotes column
	#	for that specific customerID
        
		UPDATE	Suppliers
		SET	Suppliers.Notes = supplierCountText        
		WHERE	Suppliers.SupplierID = supplierID;	

	END$$

DELIMITER   ;
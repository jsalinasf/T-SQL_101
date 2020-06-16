INSERT INTO Products(ProductCategoryID, SupplierID,	ProductName, ProductImage, NetRetailPrice, AvailableQuantity, WholesalePrice, UnitKGWeight, Notes)
VALUES(3, 3, 'peanut butter', NULL, 3.79, 1000, 2.69, 0.75, 'caution: high calorie');

SELECT	S.*
FROM	Suppliers S
WHERE	S.SupplierID = 3;
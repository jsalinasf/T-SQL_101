USE packt_online_shop;

SHOW COLUMNS FROM products;

ALTER TABLE products ALTER ProductCategoryID SET DEFAULT 1;

SHOW COLUMNS FROM products;

SELECT * from products;

INSERT INTO products(SupplierID,ProductName,NetRetailPrice,AvailableQuantity,WholesalePrice,UnitKGWeight,Notes)
VALUES
(2,'Pancake batter',5.99,105,3.99,0.25,'fresh pancacke batter - activity 201'),
(1,'Breakfast cereal',5.99,120,3.99,0.50,'Nestle cereal - activity 201'),
(5,'Siracha sauce',5.99,57,3.99,1.20,'Home made sauce - activity 201');

SELECT * from products;
-- The Packt Online Shop management team needs to know the product category name 
-- for the habanero peppers product. You are asked to find the required 
-- information. Use a subquery to retrieve the requested data

USE packt_online_shop;

SHOW TABLES;
SHOW COLUMNS FROM products;
SHOW COLUMNS FROM productcategories;

-- Using a regular Query
SELECT products.ProductName, productcategories.ProductCategoryName
FROM products
INNER JOIN productcategories
ON products.ProductCategoryID = productcategories.ProductCategoryID
WHERE products.ProductName = 'habanero peppers';

-- Using a Subquery
SELECT productcategories.ProductCategoryName
FROM productcategories
WHERE productcategories.ProductCategoryID IN (
	SELECT products.ProductCategoryID 
    FROM products
    WHERE products.ProductName= 'habanero peppers'
);



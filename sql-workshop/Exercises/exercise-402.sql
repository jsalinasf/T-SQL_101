USE packt_online_shop;
-- SHOW TABLES IN packt_online_shop;
-- SHOW COLUMNS IN productcategories;

-- SELECT ProductCategoryName, Notes
-- FROM productcategories;

-- SELECT ProductCategoryID,ProductCategoryName
-- FROM productcategories;

-- Both of these queries return the same information
-- The order of the coumns is given by how they are request on the
-- SELECT statement of the query

-- SELECT ProductCategoryName,ProductCategoryID
-- FROM productcategories;

-- SELECT ProductCategoryID AS ID,ProductCategoryName AS CATEGORY
-- FROM productcategories;

SELECT ProductCategoryID AS ID,ProductCategoryName AS 'PRODUCT CATEGORY'
FROM productcategories;
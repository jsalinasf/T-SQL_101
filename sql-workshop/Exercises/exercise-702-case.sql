USE packt_online_shop;

SELECT products.productName, products.WholesalePrice, products.NetRetailPrice, 'Price Point' AS 'Price Point', products.UnitKGWeight
FROM products
ORDER BY products.ProductName;


USE packt_online_shop;

SELECT 
	products.productName,
	products.WholesalePrice,
    products.NetRetailPrice,
    CASE
		WHEN products.NetRetailPrice <= 24.99 THEN 'Cheap'
        WHEN products.NetRetailPrice > 24.99 AND products.NetRetailPrice <= 79.99 THEN 'Mid Price'
        WHEN products.NetRetailPrice > 79.99 AND products.NetRetailPrice <= 2499.99 THEN 'Expensive'
        ELSE 'Very Expensive'
	END
    AS 'Price Point',
    products.UnitKGWeight
FROM products
ORDER BY products.productName;


USE packt_online_shop;

SELECT 
	products.ProductName,
    products.NetRetailPrice,
    products.UnitKGWeight,
    products.NetRetailPrice * products.UnitKGWeight AS 'Shipping Cost',
    CASE
		WHEN 'Shipping Cost' <= 1.00 THEN 'Cheap'
        WHEN 'Shipping Cost' > 1.00 AND 'Shipping Cost' <= 35.00 THEN 'Mid-price'
        ELSE 'Very Expensive'        
    END
    AS 'Shipping Cost Category'
FROM products;
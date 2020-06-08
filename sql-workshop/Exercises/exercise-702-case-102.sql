USE packt_online_shop;

SELECT 
	products.ProductName,
    products.NetRetailPrice,
    products.UnitKGWeight,
    products.NetRetailPrice * products.UnitKGWeight AS 'Shipping Cost',
    CASE
		WHEN products.NetRetailPrice * products.UnitKGWeight <= 1.00 THEN 'Cheap'
        WHEN products.NetRetailPrice * products.UnitKGWeight > 1.00 AND products.NetRetailPrice * products.UnitKGWeight <= 35.00 THEN 'Mid-price'
        WHEN products.NetRetailPrice * products.UnitKGWeight > 35.00 AND products.NetRetailPrice * products.UnitKGWeight <= 100.00 THEN 'Expensive'
        ELSE 'Very Expensive'        
    END
    AS 'Shipping Cost Category'
FROM products;
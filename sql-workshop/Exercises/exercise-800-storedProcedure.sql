CREATE DEFINER=`root`@`localhost` PROCEDURE `spFilterProductsByNRP`(IN priceLevel FLOAT, IN unitWeight FLOAT)
BEGIN

	SELECT 
		ProductName,
		WholeSalePrice,
		NetRetailPrice,
		CASE
			WHEN NetRetailPrice <= 24.99 THEN 'Cheap'
			WHEN NetRetailPrice >24.99 AND NetRetailPrice <= 79.99 THEN 'Mid-Price'
			WHEN NetRetailPrice >79.99 AND NetRetailPrice <= 2499.99 THEN 'Expensive'
			ELSE 'Very Expensive'
		END AS 'PricePoint',
		AvailableQuantity,
        UnitKGWeight
	FROM products
    WHERE NetRetailPrice <= priceLevel AND UnitKGWeight <= unitWeight
    ORDER BY ProductName;

END
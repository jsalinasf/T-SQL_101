CREATE DEFINER=`root`@`localhost` FUNCTION `fnProductTotalOrderQty`(ProductID INTEGER) RETURNS int
    DETERMINISTIC
BEGIN
/*
	To test:
    USE packt_online_shop;
	SELECT packt_online_shop.fnProductTotalOrderQty(12);
    SELECT packt_online_shop.fnProductTotalOrderQty(3);
*/

DECLARE retVal INTEGER;

SET retVal = (
	SELECT
		CASE
			WHEN SUM(OI.quantity) IS NULL THEN 0
            ELSE SUM(OI.quantity) 
		END AS 'quantity' 
	FROM OrderItems OI 
	WHERE OI.Productid = ProductID 
);

IF (retVal IS NULL) THEN
	SET retVal = 0;
END IF;

RETURN retVal;
END
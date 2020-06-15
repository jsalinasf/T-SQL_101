CREATE DEFINER=`root`@`localhost` FUNCTION `fnCountCustomerOrders`(CustomerID Integer) RETURNS int
    DETERMINISTIC
BEGIN
/*
	To test:
	SELECT packt_online_shop.fnCountCustomerOrders(3)
    SELECT packt_online_shop.fnCountCustomerOrders(12)
*/

DECLARE countOrders INTEGER;

SET countOrders = (
	Select COUNT(O.orderID)
    FROM orders O INNER JOIN customers C
    ON O.CustomerID = C.CustomerID
    WHERE C.customerID = CustomerID
);

IF (countOrders IS NULL) THEN
	SET countOrders = 0;
END IF;

RETURN countOrders;
END
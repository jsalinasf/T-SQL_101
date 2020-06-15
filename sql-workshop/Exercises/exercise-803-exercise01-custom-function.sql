CREATE DEFINER=`root`@`localhost` FUNCTION `fnTotalSalesRvnByCust`(CustomerID Integer) RETURNS float
    DETERMINISTIC
BEGIN 
  /* 
    To test: 
    USE packt_online_shop; 
    SELECT packt_online_shop.fnTotalSalesRvnByCust (12); 
    SELECT packt_online_shop.fnTotalSalesRvnByCust (3); 
  */ 

  DECLARE retVal FLOAT; 

  SET retVal = ( 
    SELECT SUM(OI.Quantity * (OI.UnitPrice - OI.Discount)) 
    FROM OrderItems OI INNER JOIN Orders O ON OI.OrderID = O.OrderID 
	WHERE O.CustomerID = CustomerID     
  ); 

  /*
  If a customer has not placed an order, (s)he
  has a total revenue value of null. We'll
  have an easier time dealing with a 0.00
  return value in that case.
  */
  IF (retVal IS NULL) THEN
	SET retVal = 0.00; 
  END IF; 

  RETURN (retVal); 
END
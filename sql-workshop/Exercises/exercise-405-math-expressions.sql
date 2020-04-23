USE packt_online_shop;

-- SELECT *
-- FROM orderitems;

-- SELECT ProductID, Quantity, UnitPrice, (Quantity * UnitPrice) as 'Line Item Total'
-- FROM orderitems;

SELECT ProductID, Quantity, UnitPrice, (Quantity * UnitPrice) as 'Line Item Total', Discount, ((Quantity * UnitPrice) - (Quantity * Discount)) AS 'Price After Discount'
FROM orderitems;
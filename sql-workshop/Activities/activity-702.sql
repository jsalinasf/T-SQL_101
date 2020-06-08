USE packt_online_shop;

-- You have been asked to build a list of order shipment date categories 
-- for a report dated December 15, 2019.

-- The business rules define shipment dates before December 15, 2010 as Past Shipment Dates. 
-- A shipment date on or after December 15, 2010, but before December 15, 2019, is defined as a Recent Shipment Date. 
-- Anything else is defined as a Future Shipment Date

-- Use a CASE statement to build the required list, implementing a YYYY-MM-DD format for the date values. 
-- The result set should contain the order number, shipment date, and shipment date category columns.

-- The orders table has the raw data that you will need.

-- SHOW COLUMNS FROM orders;

SELECT 
	orders.OrderNumber,
    orders.ShipmentDate,
    CASE
		WHEN orders.ShipmentDate < '2010-12-15' THEN 'Past Shipment Dates'
        WHEN orders.ShipmentDate >= '2010-12-15' AND orders.ShipmentDate <= '2019-12-15' THEN 'Recent Shipment Date'
        ELSE 'Future Shipment Date'
    END
    AS 'Shipment Dates'
FROM orders
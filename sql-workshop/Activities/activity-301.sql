SHOW TABLES IN packt_online_shop;

USE packt_online_shop;

-- SHOW COLUMNS IN customers;
-- SHOW COLUMNS IN products;
-- SELECT * FROM customers;
-- SELECT * FROM products;

-- ALTER TABLE customers ADD COLUMN CustomerID INT PRIMARY KEY AUTO_INCREMENT

DROP TABLE IF EXISTS orders;
CREATE TABLE orders
(
	OrderID INT PRIMARY KEY AUTO_INCREMENT,
    CustomerID INT NOT NULL,
    OrderNumber INT NOT NULL,
    OrderDate DATE DEFAULT (CURRENT_DATE()),
    ShipmentDate DATE DEFAULT (CURRENT_DATE + INTERVAL 7 DAY),
    OrderStatus CHAR(10) CONSTRAINT OrderStatus_chk CHECK (OrderStatus IN ('Processing','Pending','In Transit','Delivered','Closed')),
    Notes VARCHAR(250),
    FOREIGN KEY (CustomerID) REFERENCES customers(CustomerID)
);

INSERT INTO orders (CustomerID,OrderNumber,OrderDate,ShipmentDate,OrderStatus,Notes)
VALUES
(1,1,DEFAULT,DEFAULT,'Closed','Deliver over weekends');

SELECT * from orders;

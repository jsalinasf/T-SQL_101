-- LIKE operator is used with the WHERE clause
-- % represents zero or multiple characters
-- _ represents a SINGLE character

USE packt_online_shop;
SHOW TABLES;

SHOW COLUMNS FROM customers;

-- Search for first names that have o in the second position:
SELECT FirstName
FROM customers
WHERE FirstName LIKE '_o%';
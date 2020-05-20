-- LIKE operator is used with the WHERE clause
-- % represents zero or multiple characters
-- _ represents a SINGLE character

USE packt_online_shop;
SHOW TABLES;

SHOW COLUMNS FROM customers;

-- Search for first names that have o in the second position:
SELECT FirstName, LastName, Phone
FROM customers
WHERE FirstName LIKE '_o%';

SELECT FirstName AS 'Customers from LA', Phone
FROM customers
WHERE Phone LIKE '(310)%';

-- pull up a report on all the customers whose names are three-letter long
SELECT FirstName, LastName, Phone
FROM customers
WHERE FirstName LIKE '___';
USE packt_online_shop;

SELECT CONCAT(customers.FirstName,' ',customers.LastName) AS 'Full Name', customers.Phone
FROM customers
UNION
SELECT suppliers.ContactPerson AS 'Full Name',suppliers.PhoneNumber
FROM suppliers;

SHOW COLUMNS FROM Suppliers;
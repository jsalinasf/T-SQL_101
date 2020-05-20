USE packt_online_shop;

SELECT FirstName, MiddleName, LastName, Phone
FROM customers
WHERE FirstName IS NULL;
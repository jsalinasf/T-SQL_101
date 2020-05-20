USE packt_online_shop;

SELECT *
FROM customers
WHERE Firstname = 'Joe' AND Phone LIKE '(310)%';

SELECT FirstName, LastName, Phone
FROM customers
WHERE FirstName LIKE 'Jo%' AND (Phone LIKE '(211)%' OR Phone Like '(310)%') AND NOT Lastname = 'Carter';


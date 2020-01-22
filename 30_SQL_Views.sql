-- SQL VIEWS
-- It is important to note that creating a view does not make a copy of the data. Instead, think of a view as a way to use the results of a select statement as a table. 
-- While adding the letter v to the name of a view isn't required, it's a common naming convention.

CREATE VIEW vCustomerContactInfo
AS
SELECT [Name], Address
FROM Customers

SELECT *
FROM vCustomerContactInfo


-- Create a view named vPhoneNumbers that selects/exposes the BusinessEntityID and PhoneNumber  columns of the Person.PersonPhone table.
CREATE VIEW vPhoneNumbers
AS
SELECT BusinessEntityID, PhoneNumber
FROM Person.PersonPhone


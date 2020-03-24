-- STORED PROCEDURES

--CREATE PROCEDURE SelectBeers
--AS
--Select * From Beers

--EXEC SelectBeers

--CREATE PROCEDURE SelectBusinessMajors
--AS
--SELECT *
--FROM test.Student
--WHERE Major = 'Business'

--CREATE PROCEDURE SelectStudentsUnderForty
--AS
--SELECT *
--FROM test.Student
--WHERE Age <=40

--CREATE PROCEDURE SelectStudentsByAge
--	@age int
--AS
--SELECT *
--FROM test.Student
--WHERE Age = @age --put variable here (without the 'int')

--Exec SelectStudentsByAge 32

--Select * from beers
--WHERE ABV > = 0.1

--CREATE PROCEDURE SelectBeersABV
--	@ABV float
--AS
--SELECT *
--FROM Beers
--WHERE ABV > = @ABV
--EXEC SelectBeersABV 0.125


--CREATE PROCEDURE [dbo].[SelectAddressByPostalCode] 
--	@param varchar(5)--parameter goes here
--AS
--BEGIN
--	SELECT AddressLine1 
--	FROM person.Address
--	WHERE PostalCode = @param
--END


--Example of a complex Stored Procedura
CREATE PROCEDURE [dbo].[SelectHighestYtdByTerritory]
	@TerritoryGroup varchar(50)
AS
BEGIN
	SELECT MAX(sp.FirstName) + ' ' + MAX(sp.LastName)
	FROM [Sales].[vSalesPerson] sp
	WHERE SalesYTD = (
            --subquery will go in here
            SELECT MAX(SalesYTD)
            FROM [Sales].[vSalesPerson]
            WHERE TerritoryGroup = @TerritoryGroup
	)
END


CREATE PROCEDURE dbo.SelectPhoneNumberByName (
	@FirstName varchar(50)
)
AS 
SELECT pp.PhoneNumber
FROM Person.Person as p
JOIN Person.PersonPhone pp
ON p.BusinessEntityID = pp.BusinessEntityID --finish join here
WHERE p.FirstName = @FirstName --something here
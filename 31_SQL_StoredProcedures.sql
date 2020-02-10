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
EXEC SelectBeersABV 0.099

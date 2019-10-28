Create TABLE People (
	firstName varchar(100),
	lastName varchar(100),
	age int
)

Insert INTO People
VALUES ('Mike','Meyers',32), ('Rudolph','Martinez',20)

SELECT TOP (5) firstName
FROM People

SELECT TOP (5) *
FROM People

SELECT firstName, lastName
FROM People
WHERE Age = 32
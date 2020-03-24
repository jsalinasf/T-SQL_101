-- Specifying the name of the colums where I want my values to be inserted
-- Useful for when I ´m ot familiar with the Table Schema or the Table schema changes constantly
INSERT INTO dbo.People ([age],[lastName],[firstName])
VALUES (47, 'Marthe','Stewart')

-- Inserting multiple values at once
INSERT INTO dbo.People ([lastName],Age,[firstName])
VALUES ('Parker',15,'Peter'), ('Wayne',23, 'Bruce'), ('West',22,'Wally')


SELECT TOP 10 *
FROM dbo.People


-- INSERT SELECT
-- To copy data from one Table to another

-- Im creating a new Table justo for demo pourposes
CREATE Table PeopleEspanol (
	nombre varchar(100),
	apellido varchar(100),
	edad int
)

-- Here is the INSERT SELECT statement
INSERT INTO dbo.PeopleEspanol([nombre],[apellido],edad)
SELECT firstName,lastName, age
FROM dbo.People

SELECT TOP 10 *
FROM dbo.PeopleEspanol

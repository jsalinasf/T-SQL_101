-- Create Table
CREATE TABLE Person (
	firstName varchar(50),
	Age int,
	eyeColor varchar(50)
)

INSERT INTO dbo.Person ([firstName],Age,[eyeColor])
VALUES ('George',11,'dark green'), ('Sarah',5,'Brown'), ('Alexander',37,'black'), ('Patricio',54,'blue')

SELECT TOP 20 *
FROM dbo.Person
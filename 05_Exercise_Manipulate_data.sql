-- Recreating Table from FirstDB using INSERT SELECT Clause
INSERT INTO dbo.Person([firstName],[Age])
SELECT firstName, age
FROM FirstDB.dbo.People

-- Updating eyeColor field for each row
UPDATE dbo.Person
SET Person.eyeColor = 'black'
WHERE Person.firstName = 'Mike'

UPDATE dbo.Person
SET Person.eyeColor = 'brown'
WHERE Person.firstName = 'Rudolph'

UPDATE dbo.Person
SET Person.eyeColor = 'green'
WHERE Person.firstName = 'Mario'

UPDATE dbo.Person
SET Person.eyeColor = 'blue'
WHERE Person.firstName = 'Stewart'

UPDATE dbo.Person
SET Person.eyeColor = 'N/A'
WHERE Person.firstName = 'Peter'

UPDATE dbo.Person
SET Person.eyeColor = 'N/A'
WHERE Person.firstName = 'Bruce'

UPDATE dbo.Person
SET Person.eyeColor = 'light brown'
WHERE Person.firstName = 'Wally'

-- ######################################
--You should practice the following

--Updating a single column in a single row
UPDATE dbo.Person
SET Person.Age = 27
WHERE Person.firstName = 'Wally'

--Updating a several columns at once -- 
UPDATE dbo.Person
SET Person.firstName = 'Wally West', Person.Age = 25
WHERE Person.firstName = 'Wally'

--Updating several rows at once
UPDATE dbo.Person
SET Person.eyeColor = 'No data available'
WHERE Person.eyeColor = 'N/A'

--Deleting a single row
DELETE
FROM dbo.Person
WHERE Person.firstName = 'Rudolph'

--Deleting several rows
DELETE
FROM dbo.Person
WHERE Person.eyeColor = 'No data available'


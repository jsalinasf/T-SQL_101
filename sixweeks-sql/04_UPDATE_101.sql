-- ################
-- UPDATE
-- ################

UPDATE dbo.Person
SET person.eyeColor = 'honey'
WHERE person.Age = 11

UPDATE dbo.Person
SET person.eyeColor = 'honey'
WHERE person.Age = 11

UPDATE dbo.Person
SET person.eyeColor = 'light brown'
WHERE person.firstName = 'Alexander'

UPDATE dbo.Person
SET person.eyeColor = 'blue'
WHERE person.firstName = 'Patricio'

-- The following statement will update all of the table rows
UPDATE dbo.Person
SET person.eyeColor = 'N/A'

-- Updating several fields at once
UPDATE dbo.Person
SET person.eyeColor = 'green', person.Age = 19
WHERE person.firstName = 'Patricio'


-- ################
-- DELETE
-- ################

DELETE
FROM dbo.Person
WHERE Person.firstName = 'Alexander'

DELETE
FROM dbo.Person
WHERE Person.Age = 5

DELETE
FROM dbo.Person
-- DO NOT FORGET the WHERE STATEMENT if so, all of your data will be DELETED!!!
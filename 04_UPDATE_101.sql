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


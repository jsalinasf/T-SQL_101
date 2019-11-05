-- Recreating Table from FirstDB
-- using INSERT SELECT Clause
INSERT INTO dbo.Person([firstName],[Age])
SELECT firstName, age
FROM FirstDB.dbo.People



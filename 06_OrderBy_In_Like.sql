-- ORDER BY Clause

SELECT LouisvilleCrime.CrimeType, LouisvilleCrime.ZipCode
FROM dbo.LouisvilleCrime
ORDER BY LouisvilleCrime.ZipCode

SELECT LouisvilleCrime.Description, LouisvilleCrime.CrimeType
FROM dbo.LouisvilleCrime
ORDER BY LouisvilleCrime.CrimeType

-- LIKE Statement
-- % is a wildcard operator
SELECT *
FROM dbo.LouisvilleCrime
-- Pay ttention to the use of the % wildcard operator
WHERE LouisvilleCrime.Description LIKE 'FLEEING%'
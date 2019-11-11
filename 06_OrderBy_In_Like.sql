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
-- Pay attention to the use of the % wildcard operator
WHERE LouisvilleCrime.Description LIKE 'FLEEING%'

SELECT *
FROM dbo.LouisvilleCrime
-- Pay attention to the use of the % wildcard operator
WHERE LouisvilleCrime.Description LIKE '%500'

SELECT *
FROM dbo.LouisvilleCrime
-- Pay attention to the use of the % wildcard operator
WHERE LouisvilleCrime.Description LIKE '%OPIATES'

SELECT *
FROM dbo.LouisvilleCrime
WHERE LouisvilleCrime.Description LIKE 'POSS%'

SELECT *
FROM dbo.LouisvilleCrime
-- Pay attention to the use of the % wildcard operator
-- You can use more than one %
WHERE LouisvilleCrime.Description LIKE '%DEGREE%'

SELECT *
FROM dbo.LouisvilleCrime
-- Pay attention to the use of the % wildcard operator
-- You can use more than one %
WHERE LouisvilleCrime.Description LIKE '%SHOPLIFTING%'


-- The ORDER BY clause goes after the WHERE clause. 
SELECT LouisvilleCrime.Description, LouisvilleCrime.CrimeType, LouisvilleCrime.ZipCode
FROM LouisvilleCrime
WHERE LouisvilleCrime.CrimeType = 'THEFT/LARCENY'
ORDER BY LouisvilleCrime.ZipCode


-- ORDER BY for multiple COLUMNS
SELECT LouisvilleCrime.CrimeType, LouisvilleCrime.DateOccurred
FROM dbo.LouisvilleCrime
ORDER BY LouisvilleCrime.CrimeType, LouisvilleCrime.DateOccurred

SELECT LouisvilleCrime.CrimeType, LouisvilleCrime.ZipCode, LouisvilleCrime.DateOccurred
FROM dbo.LouisvilleCrime
ORDER BY LouisvilleCrime.CrimeType, LouisvilleCrime.ZipCode, LouisvilleCrime.DateOccurred

SELECT LouisvilleCrime.CrimeType, LouisvilleCrime.ZipCode, LouisvilleCrime.DateOccurred
FROM dbo.LouisvilleCrime
WHERE LouisvilleCrime.CrimeType LIKE '%THEFT%'
ORDER BY LouisvilleCrime.City, LouisvilleCrime.ZipCode, LouisvilleCrime.DateOccurred

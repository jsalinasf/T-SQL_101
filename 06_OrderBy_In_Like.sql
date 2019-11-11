-- ORDER BY Clause

SELECT LouisvilleCrime.CrimeType, LouisvilleCrime.ZipCode
FROM dbo.LouisvilleCrime
ORDER BY LouisvilleCrime.ZipCode

SELECT LouisvilleCrime.Description, LouisvilleCrime.CrimeType
FROM dbo.LouisvilleCrime
ORDER BY LouisvilleCrime.CrimeType
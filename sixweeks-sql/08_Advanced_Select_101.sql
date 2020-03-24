-- Advanced SELECT 101
SELECT *
FROM dbo.LouisvilleCrime
WHERE LouisvilleCrime.DateOccurred > '2017-11-14 18:11:00.000'
AND LouisvilleCrime.CrimeType = 'DRUGS/ALCOHOL VIOLATIONS'
AND LouisvilleCrime.Description LIKE '%POSS%'
ORDER BY LouisvilleCrime.ZipCode
-- STR Converts INT or FLOAT into STRINGS
-- Pay attention to how STR specifies the format
-- desired characteres '4' - This includes the decimal point
-- desired decimals '2'
SELECT STR(ABV * 100, 4, 2) + '%'
FROM dbo.Beer

-- CAPITALIZE Strings
SELECT UPPER(Beers.Style)
FROM Beers

-- REVERSE Strings
SELECT TOP 10 Beers.Style, REVERSE(Beers.Style)
FROM dbo.Beers

-- LENGTH of STRINGS
SELECT TOP 10 Beers.Name, LEN(Beers.Name) AS NameLength
FROM dbo.Beers

-- Let's add the Name column onto this query so we can see them side by side!
-- Also, order the results from lowest to highest by NameLength
SELECT LEN(Beers.Name) AS NameLength, Beers.Name
FROM dbo.Beers
ORDER BY NameLength

-- MAX(): Returns the highest value in dataset
SELECT MAX(Beers.ABV)
FROM dbo.Beers

-- SUBQUERY
SELECT Beers.Name
FROM dbo.Beers
WHERE
Beers.ABV = (
		--Insert query here
		SELECT MAX(Beers.ABV)
		FROM dbo.Beers
		)

-- COUNT
SELECT COUNT(*)
FROM dbo.Beers

-- AVERAGE
SELECT AVG(Beers.ABV)
FROM dbo.Beers

-- ROUND
SELECT ROUND(AVG(Beers.ABV), 2)
FROM dbo.Beers

-- SUBSTRING (AKA: splice)
-- INDEX starts in '1')
-- 2nd PArameter is the length of the substring you are searching for
SELECT SUBSTRING('PIZZA', 1, 3)
SELECT(SUBSTRING('SQLNOOBZ', 4, 3))

-- FUNCTIONS can be used in the WHERE CLAUSE as well
SELECT Beers.Name
FROM dbo.Beers
WHERE SUBSTRING(Beers.Name, 1, 4) = 'amer'

-- DATEPART extracts specific element (hour, day, minute) from DATES
-- Example: Return the Description of crimes that occurred in hour 23
SELECT Description
FROM dbo.LouisvilleCrime
WHERE DATEPART(hour, DateOccurred) = '23'
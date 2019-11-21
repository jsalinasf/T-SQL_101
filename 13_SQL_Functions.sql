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
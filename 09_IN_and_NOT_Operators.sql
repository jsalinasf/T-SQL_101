-- IN and NOT Operators

-- Let´s get a sample of the Table Data
SELECT TOP 10 *
FROM dbo.Beers
WHERE Beers.IBU IS NOT null


-- Retrieve rows of beers with an IBU of 10, 17 or 41
SELECT *
FROM dbo.Beers
WHERE IBU IN ('10.0', '17.0', '41.0')


-- Retrieve Name of Breweries that have a BreweryID of 94 or 47
SELECT [Name]
FROM dbo.Beers
WHERE Beers.BreweryId IN (94, 47)


-- Select the Style of beers where the ounces are not 12 or 16.
SELECT Style
FROM dbo.Beers
WHERE Beers.Ounces
NOT IN (12, 16)


-- Select rows (all columns, *) where the style contains the word IPA but does not contain the word American . 
SELECT *
FROM dbo.Beers
WHERE Beers.Style LIKE ('%IPA%')
AND Beers.Style NOT LIKE ('%American%')


-- Select rows (all columns, *) where the style contains the word IPA but does not contain the word American. Order the results by ABV, starting with the highest.
SELECT *
FROM dbo.Beers
WHERE Beers.Style LIKE ('%IPA%')
AND Beers.Style NOT LIKE ('%American%')
ORDER BY Beers.ABV DESC


-- Select the [Name] of the beers that have an ABV more than 0.06 and ounces more than 12 and whose [Name] does not contain Ale
SELECT [Name]
FROM dbo.Beers
WHERE Beers.ABV > 0.06
AND Beers.Ounces > 12
AND Beers.Name NOT LIKE ('%Ale%')
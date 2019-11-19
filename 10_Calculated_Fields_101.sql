-- Calculated Fields
SELECT [Name], Beers.ABV * Beers.Ounces AS OuncesOfPureAlcohol
FROM dbo.Beers
ORDER BY OuncesOfPureAlcohol DESC


-- Intro To CONCATENATION
SELECT 'Hello' + '!'

SELECT TOP 10 [Name] + '!'
FROM dbo.Beers

SELECT [Name] + Beers.Style
FROM dbo.Beers

SELECT [Name] + ' (' + Beers.Style + ')'
FROM dbo.Beers

-- CONCATENATING Data Types: VARCHAR
SELECT '3' + '6'

-- CONCATENATING Data Types: INTS and FLOATS
SELECT 3 + 6


-- FIRST FUNCTION
--	Pay attetion to the function STR()  
SELECT [Name] + '(' + STR(IBU) + ')'
FROM dbo.Beers
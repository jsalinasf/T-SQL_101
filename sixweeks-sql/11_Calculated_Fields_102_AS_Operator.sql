-- Multiplying Fields
SELECT 27 * 13

SELECT ABV * 100
FROM dbo.Beers

-- Pay attention to how STR specifiy the format
-- desired characteres '4' - This includes the decimal point
-- desired decimals '2'
SELECT STR(ABV * 100, 4, 2) + '%'
FROM dbo.Beers

SELECT [Name],
	   ABV, -- Alcohol by Volume
	   Ounces, --  Volume
	   ABV*Ounces -- Calculated Total Amount of Alcohol
FROM Beers

-- AS OPerator
SELECT [Name] as 'Beer Name'
FROM Beers
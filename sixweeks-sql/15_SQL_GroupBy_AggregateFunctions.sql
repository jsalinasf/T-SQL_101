-- AGGREGATE FUNCTION
-- Is a function that takes in several values and returns one value
-- The MAX() and AVG() functions are actually aggregate functions

--  The Group By clause is almost always used alongside an aggregate 
-- function, so we'll talk about both in this section!

SELECT Beers.Style, SUM(Beers.ABV) AS SumABV
FROM Dbo.Beers
WHERE Beers.ABV IS NOT NULL
GROUP BY Beers.Style
ORDER BY SumABV DESC
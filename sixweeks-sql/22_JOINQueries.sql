--Perform the same exact join as the previous challenge. This time, add the OfficerGender in the select statement, too.
--INNER is not necessary, however is a good idea to alwats specify what type of JOIN you are doing
SELECT ts.OfficerGender, c.PersonsSex, c.CaseNumber, c.ChargeDescr
FROM TrafficStops ts
INNER JOIN UniformCitationData c
ON ts.CitationNumber = c.CitationControlNumber



--The primary key of the Breweries table is the Id column.
--No two rows can share the same primary key! It is like a phone number or social security number for a person. A table doesn't have to have a primary key. But if it does, it can have only one primary key column.
--Add the Id column to the query to complete the join!
SELECT Beers.[Name], Breweries.[BreweryName]
from Beers 
Join Breweries 
ON Beers.BreweryId = Breweries.Id--column here


-- PAY Attention to ambigous Column Names (Name of columns that may coincide between different tables)
-- Join the Beers and Breweries tables together. Select the Name columns from each table.
SELECT Beers.[Name], Breweries.[BreweryName]
FROM Beers 
Join Breweries 
On Beers.BreweryId = Breweries.Id


--Join the Beers and Breweries tables on the BreweryId.
--Select the Name of the brewery, the Name of the beer and the IBU of the beer.
SELECT Beers.[Name], Breweries.[BreweryName], IBU
FROM Beers
JOIN Breweries
ON Beers.BreweryId = Breweries.Id


--If we want to join tables and use a WHERE clause, we need to put the WHERE clause after the join statement.
SELECT Beers.[Name], Breweries.[BreweryName], ABV
FROM Beers 
Join Breweries 
On Beers.BreweryId = Breweries.Id
WHERE ABV < .04


--Join the Beers and Breweries tables on the BreweryId.
--Select the Name of the brewery, the Name of the beer and the IBU of the beer.
--Only show rows WHERE the IBU of the beer is more than 70
SELECT Beers.[Name], Breweries.[BreweryName], IBU
FROM Beers
Join Breweries 
On Beers.BreweryId = Breweries.Id
WHERE IBU > 70
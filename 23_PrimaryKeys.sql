-- Create a Table
-- Create a column used as a PRIMARY KEY
-- Create a second column which does not allow null values
CREATE TABLE [dbo].[Books](   
	ISBN varchar(13) PRIMARY KEY,
	TITLE varchar(100) NOT NULL
)


-- Create a table called Employee. It should have two columns: Name and EmployeeId. Name should be of datatype varchar(100) and EmployeeId should be of datatype int.
-- Both columns should be NOT NULL. Make EmployeeId the PRIMARY KEY of the table.
CREATE TABLE [dbo].[Employee] (
    EmployeeId int PRIMARY KEY,
    Name varchar(100) NOT NULL
)


-- In some cases, you may want to have a PRIMARY KEY composed of multiple columns. For example, a row in a table of cars could be uniquely identified by a COMBINATION of it's YEAR, MAKE and MODEL.
-- The starter script shows how to add the primary key. Edit the script to include the  following columns: YEAR [int], MAKE [varchar(50)] and MODEL [varchar(50)].
CREATE TABLE [dbo].[Cars2](   
	Year int,
	Make varchar(50),
	Model varchar(50)
	CONSTRAINT PK_ID PRIMARY KEY ([Year], [Make], [Model])
)



-- Select the VehicleSearched and StopDate columns from TrafficStops and PersonsHomeState from Citations. 
-- Only show records where the PersonsHomeState is not KY.
SELECT ts.VehicleSearched, ts.StopDate, c.PersonsHomeState
FROM TrafficStops ts
JOIN Citations c
ON ts.CitationNumber = c.CitationControlNumber
WHERE c.PersonsHomeState NOT LIKE 'KY'


-- Join the Citations and Crime2018 tables.
-- Group the records by CrimeType.
-- In the select statement, include the CrimeType and the average PersonsAge for that CrimeType
SELECT cr.CrimeType, AVG(c.PersonsAge)
FROM Citations c
JOIN Crime2018 cr
ON c.CaseNumber = cr.IncidentNumber
GROUP BY CrimeType


-- Join the Beers and Breweries table.
-- Group the rows by City and State.
-- Select the average IBU, the brewery City and the brewery State.
-- Alias the calculated AVG() column as AVGIBU and order the result by this column
SELECT  br.City, br.State, AVG(IBU) as AVGIBU
FROM Beers b
JOIN Breweries br
ON b.BreweryId = br.Id
GROUP BY br.City, br.State
ORDER BY AVGIBU

-- Using the last challenge as inspiration, join the Beers and Breweries tables and group by the City and State columns.
-- This time, get the MAX() ABV for each grouping. 
-- Alias the calculated MAX() column as MAXABV and order the result by this column
Select br.City, br.State, MAX(b.ABV) as MAXABV
FROM Beers b
JOIN Breweries br
ON b.BreweryId = br.ID
GROUP BY br.City, br.State
ORDER BY MAXABV

-- Join the ScooterTrips and NovWeather on their date columns: TripDate and Date.
-- Select the columns ScooterTrips.TripDistance, NovWeather.Date and NovWeather.InchesPrecip. Only show records where NovWeather.InchesPrecip is  more than 1 
SELECT st.TripDistance, nw.Date, nw.InchesPrecip
FROM ScooterTrips st
JOIN NovWeather nw
ON st.TripDate = nw.Date
WHERE nw.InchesPrecip > 1

-- Join the ScooterTrips and NovWeather on their date columns.
-- Group the rows by ScooterTrips.TripDate.
-- Select TripDate and the Count(*) for each group. Alias the count column as NumTrips
SELECT st.TripDate, COUNT(*) as NumTrips
FROM ScooterTrips st
JOIN NovWeather nw
ON st.TripDate = nw.Date
GROUP BY st.TripDate
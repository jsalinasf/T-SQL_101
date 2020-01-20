-- LEFT JOINS
-- Start out by LEFT JOINING the Teachers and Ratings tables, just like the example in the introduction.
-- The tables we will select from will have the same columns and names, but different data.
SELECT Teachers.[Name], Ratings.[Rating]
FROM school.Teachers
LEFT JOIN school.Ratings
ON Teachers.Id = Ratings.TeacherId


--SELECT THE NAME OF ALL BREWERIES WHERE THE STATE IS KY.
--ALSO INCLUDE THE NAME OF ANY BEERS IN THE BEERS TABLE ASSOCIATED WITH THIS BREWERY.
--*THE BREWERYID COLUMN IN THE BEERS TABLE CORRESPONDS TO THE ID COLUMN OF THE BREWERIES TABLE 
SELECT Breweries.[Name], Beers.[Name]
FROM Breweries
LEFT JOIN Beers
ON Breweries.Id = Beers.BreweryId
WHERE Breweries.[State] = 'KY'

--Return the Subject column from school.Subjects along with the [Name] column from school.Teachers.
--Make sure that ALL subjects are returned, regardless if there is a related teacher or not.
SELECT Subject, Teachers.[Name]
FROM school.Subject
LEFT JOIN school.Teachers
ON Subject.TeacherId = Teachers.Id
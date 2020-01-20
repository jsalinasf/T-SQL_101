-- LEFT JOINS
-- Start out by LEFT JOINING the Teachers and Ratings tables, just like the example in the introduction.
-- The tables we will select from will have the same columns and names, but different data.
SELECT Teachers.[Name], Ratings.[Rating]
FROM school.Teachers
LEFT JOIN school.Ratings
ON Teachers.Id = Ratings.TeacherId

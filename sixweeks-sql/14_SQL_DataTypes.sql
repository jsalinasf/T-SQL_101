-- NULL 
-- means that we don't have data for this row.
-- isn't really a value.
-- It's a placeholder to indicate there is no value.
-- to query for NULL values we use: 'IS NULL'

SELECT Beers.Name, Beers.ABV
FROM dbo.Beers
WHERE Beers.ABV IS NULL

-- Query for NOT NULL Values
SELECT Beers.Name, Beers.ABV
FROM dbo.Beers
WHERE Beers.ABV IS NOT NULL


-- The CHAR 
-- data type is short for CHARACTER. 
-- For the CHAR datatype, you must specify how many characters the column will store. 
-- If you look at the columns of LouisvilleCrime, you will see the ZipCode column is CHAR(5)
-- This is a good data type for zip codes, since all zip codes are 5 characters long.
-- You cannot store more characters than what is defined in the char column. 
-- If your data doesn't use the space provided, it will be filled with whitespace. 
-- So if you put "A" inside of a CHAR(2) column, then "A " is what would be stored
-- (notice the space at the end!)


-- The VARCHAR 
-- data type is short for VARIABLE CHARACTER. 
-- If you had a VARCHAR(50) column, then you could put up to 50 characters
-- in that column. A VARCHAR does NOT add extra whitespace to your data 
-- if you don't use 50 characters.


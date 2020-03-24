

-- SELECT Rows where some specified field IS NULL
SELECT TOP 10 *
FROM dbo.Beers
WHERE Beers.IBU IS null


-- SELECT Rows where some specified field IS NOT NULL
SELECT TOP 10 *
FROM dbo.Beers
WHERE Beers.IBU IS NOT null
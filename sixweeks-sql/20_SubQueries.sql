
-- A subquery can be used to combine these queries into one. 

SELECT AVG(AnnualRate)
FROM dbo.SalaryData
WHERE Department = 'Louisville Zoo' 
AND JobTitle = 'Director'

SELECT EmployeeName, JobTitle, AnnualRate
FROM dbo.SalaryData
WHERE AnnualRate > (
	SELECT AVG(AnnualRate)
	FROM dbo.SalaryData
	WHERE Department = 'Louisville Zoo' 
	AND JobTitle = 'Director'
)

SELECT [Name] 
FROM Beers
WHERE ounces = (
	--PUT YOUR QUERY HERE!
	SELECT MAX(ounces)
	FROM Beers
	)


-- In the Countries table, select the Country column for rows that have a PopDensity that is lower than average.
SELECT Country
FROM Countries
WHERE PopDensity < (
    SELECT AVG(PopDensity)
    FROM Countries
)

-- In the Countries table, select the Country column for rows that have a GDP that is higher than average.
SELECT Country
FROM Countries
WHERE GDP > (
	SELECT AVG(GDP)
	FROM Countries
)





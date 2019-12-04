
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
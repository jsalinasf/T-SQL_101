SELECT TOP 10 *
FROM dbo.SalaryData


-- Group Rows By Department
SELECT SalaryData.Department
FROM dbo.SalaryData
GROUP BY SalaryData.Department

-- COUNT of all the employees in each Department.
SELECT SalaryData.Department, COUNT(SalaryData.EmployeeName)
FROM dbo.SalaryData
GROUP BY SalaryData.Department

-- Let's improve our last query. Give the aggregate column an alias of EmployeeCount and ORDER the results by it.
SELECT SalaryData.Department, COUNT(SalaryData.EmployeeName) AS EmployeeCount
FROM dbo.SalaryData
GROUP BY SalaryData.Department
ORDER BY EmployeeCount

-- Find the SUM of the AnnualRate of each Department
SELECT SalaryData.Department, SUM(SalaryData.AnnualRate)
FROM dbo.SalaryData
GROUP BY SalaryData.Department
 
 -- Group by Department and find the highest AnnualRate for each
SELECT SalaryData.Department, MAX(SalaryData.AnnualRate)
FROM dbo.SalaryData
GROUP BY SalaryData.Department

-- If you have a GROUP BY clause in your query, then any column in your SELECT statement must be in the GROUP BY clause, or contained in an aggregate function (like MAX).
SELECT SalaryData.Department, SalaryData.EmployeeName, MAX(SalaryData.AnnualRate) AS MaxAnnualRate
FROM dbo.SalaryData
GROUP BY SalaryData.Department, SalaryData.EmployeeName
ORDER BY MaxAnnualRate DESC
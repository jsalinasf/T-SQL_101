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
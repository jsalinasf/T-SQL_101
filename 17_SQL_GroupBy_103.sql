
-- TIP:

-- WHERE filters ROWS

-- HAVING filters GROUPS

Select Department, MAX(EmployeeName), MAX(AnnualRate)
From SalaryData
GROUP BY Department
HAVING Department like '%LouisVille%'

-- Write a query that returns the same groups as the last challenge, but this time, only include groups whose Department begins with Metro
Select Department, MAX(EmployeeName), MAX(AnnualRate)
From SalaryData
GROUP BY Department
HAVING Department like 'Metro%'

-- Group the rows of the Salary table by Department and get a COUNT of each group, like you did in the previous section.
-- But this time, only show groups HAVING a COUNT of more than 500
SELECT SalaryData.Department, COUNT(SalaryData.EmployeeName)
FROM dbo.SalaryData
GROUP BY SalaryData.Department
HAVING COUNT(SalaryData.EmployeeName) > 500



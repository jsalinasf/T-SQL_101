
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

-- HAVING and WHERE
--You can use both the WHERE clause and the HAVING clause in the same query.
--*The WHERE clause happens BEFORE the rows are grouped. The HAVING clause happens AFTER the rows are grouped.
--Any rows that are filtered out by the WHERE clause will not be included in the groups. Run the starter script to see how it changes our previous challenge.

SELECT Department, COUNT(*)
FROM SalaryData
WHERE Department <> 'Louisville Fire'
GROUP BY Department
HAVING COUNT(*) > 500


-- Group the rows in the Salary table by JobTitle. Filter the rows using the WHERE clause. Only show job titles that begin with Director.
SELECT SalaryData.JobTitle
FROM dbo.SalaryData
WHERE SalaryData.JobTitle like 'Director%'
GROUP BY SalaryData.JobTitle

--You can GROUP BY several columns.
--The starter script will first group the Department column into groups. Then, within each Department group, it will create separate groups for each JobTitle.
SELECT Department, JobTitle
FROM SalaryData
GROUP BY Department, JobTitle
ORDER BY Department

--Group the Salary table by Department and JobTitle, just like the last challenge.
--Return the Department and JobTitle columns, along with the average AnnualRate.
SELECT Department, JobTitle, AVG(AnnualRate)
FROM SalaryData
GROUP BY Department, JobTitle
ORDER BY Department

--Group the Salary table by Department and JobTitle.
--This time, get the COUNT for each group.
SELECT Department, JobTitle, Count(*)
FROM SalaryData
GROUP BY Department, JobTitle
ORDER BY Department

--Modify the previous challenge, Count the Groups, to only show those groups HAVING a COUNT(*) more than 100.
SELECT Department, JobTitle, Count(*)
FROM SalaryData
GROUP BY Department, JobTitle
HAVING Count(*) > 100
ORDER BY Department
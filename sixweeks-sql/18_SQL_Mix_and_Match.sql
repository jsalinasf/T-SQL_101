-- Find the average AnnualRate of an employee with the JobTitle of Police Officer in the Salary table.
-- Your query should return a single value (one row, one column)

SELECT AVG(AnnualRate)
FROM SalaryData
WHERE JobTitle = 'Police Officer'

--Group the Salary table by Department and get the average AnnualRate for each Department using the AVG() function.
SELECT Department, AVG(AnnualRate)
FROM SalaryData
GROUP BY Department

-- Group the Salary table by Department and get the average AnnualRate for each Department using the AVG() function.
SELECT Department, AVG(AnnualRate)
FROM SalaryData
GROUP BY Department
ORDER BY AVG(AnnualRate)
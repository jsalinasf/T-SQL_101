-- Find the average AnnualRate of an employee with the JobTitle of Police Officer in the Salary table.
-- Your query should return a single value (one row, one column)

SELECT AVG(AnnualRate)
FROM SalaryData
WHERE JobTitle = 'Police Officer'
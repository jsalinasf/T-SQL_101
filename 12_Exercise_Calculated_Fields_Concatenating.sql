--For this project, we will be using calculated fields. Here are the requirements:

--Write a query that will return two columns.

--The first column will be a calculated field composed of the Name column concatenated with the Style column. The result of the first column should look like this:

--column1
--Abrasive Ale(American Double)
--You should add the parenthesis' around the Style. So, you'll have to do something like this:

--SELECT aColumn + '(' + column2 + ')'
--The second column should be the Ibu column.
--Only return rows where the Name contains the word Ale. Order the results by Ibu, highest to lowest. 

SELECT [Name] + '(' + Style + ')', IBU
FROM dbo.Beers
WHERE Beers.Name LIKE ('%ALE%')
ORDER BY IBU DESC
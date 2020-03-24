--In this section, we'll be creating our own FUNCTIONS.

--You've used some of the built in functions that SQL Server provides, like AVG(), but SQL Server also gives you the ability to write your own functions, too!

--Functions will take a value IN and RETURN a value back

--Let's take a look at an example of creating a function. The function below will accept two numbers and return the sum of those numbers:

--CREATE FUNCTION dbo.AddNumbers (@num int, @num2 int)  
--RETURNS INT 
--AS  
--BEGIN  
--     RETURN @num + @num2;  
--END; 

--Let's step through each line of this function and explain what's going on:

--    The CREATE FUNCTION parts tells SQL Server that we're creating a function.
--    dbo.AddNumbers is the name of the function.
--    (@num int, @num2 int) are the arguments/parameters
--    RETURNS INT tells SQL Server what kind of data this function will return
--    AS BEGIN tells SQL Server that the SQL past this point is the actual function code
--    RETURN @num + @num2; is the actual functionality
--    END tells SQL Server that the definition of our function has concluded


--Once you create a function, you can use it like this:

--SELECT dbo.AddNumbers (3, 4)

CREATE FUNCTION dbo.Multiply (@num1 int, @num2 int)
RETURNS INT
AS
BEGIN
    RETURN @num1 * @num2
END;

-- SELECT dbo.Multiply(2,3)

-- Let's take a look at how we might use our dbo.Multiply function. If you look at the test.Student table, you can see we have a column named Age. Let's use our function on that column.
-- Run the query below to see how we can do that.

--SELECT [Name], 
--		Major, 
--		Age, 
--		dbo.Multiply(AGE, 10) as AgeTimes10
--FROM test.Student
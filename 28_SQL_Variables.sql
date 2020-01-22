-- SQL Variables

-- When you wrote down your verb, you declared your variable. When we declare a variable in SQL, we have to use the Declare keyword. 
-- The name of your variable must be prefixed with the @ symbol. 
-- We also have to tell SQL Server what kind of data we plan on assigning to the variable. 

Declare @verb varchar(50) = 'swim';
SELECT 'Bill like to ' + @verb + ' at parties';
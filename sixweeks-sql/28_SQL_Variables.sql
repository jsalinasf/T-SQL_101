-- SQL Variables

-- When you wrote down your verb, you declared your variable. When we declare a variable in SQL, we have to use the Declare keyword. 
-- The name of your variable must be prefixed with the @ symbol. 
-- We also have to tell SQL Server what kind of data we plan on assigning to the variable. 

Declare @verb varchar(50) = 'swim';
SELECT 'Bill like to ' + @verb + ' at parties';

-- When we want to create a variable, we must use the DECLARE keyword. In the starter script, @someVar is the name of the variable.
-- When we declare a variable, we must tell SQL Server what kind of data is going to be assigned to it. 
-- In this case, the variable @someVar will be pointing to data of type varchar(10).
Declare @someVar varchar(10) = 'hello!';
SELECT @someVar


-- Assign the variable @state to the value Alaska.
-- Then, run the query to see how it works.
Declare @state varchar(20) = 'Alaska';
SELECT AutoInsurancePremium
FROM BadDrivers
WHERE State = @state


-- In the script below, we are using a variable named @region.
-- But that variable hasn't been declared. Declare the variable @region and assign it to the value OCEANIA.
-- The data type should be a varchar(10)
DECLARE @region varchar (10) = 'OCEANIA'
SELECT * 
FROM Countries
WHERE Region = @region


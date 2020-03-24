-- User-Defined Table Types

CREATE TYPE StudentAges AS TABLE   
( 
    Age int  
); 


CREATE PROCEDURE SelectStudentsByAges
    @Ages StudentAges  READONLY
AS
BEGIN
    SELECT s.[Name], s.Major, s.Age
    FROM test.Student s
    JOIN @Ages a
    on s.Age = a.Age
END


DECLARE @Ages AS StudentAges;  

INSERT INTO @Ages
VALUES (32), (40), (58);
exec SelectStudentsByAges @Ages



-- EXERCISE
--In this section, we will practice using table types by solving a hypothetical business problem. Here is the situation: the company has a history of call logs from the phone company. The business would like to know who the calls belong to, but the call logs only show the phone number, not the name of the employee.
--Fortunately, the business has a table that stores the phone numbers of employees. You know that you can join the Person.PersonPhone and Person.Person tables using the BusinessEntityID to get the names of the employees.
--However, looking up the numbers one at a time is very time consuming for a company with thousands of calls!
--Business wants to know if you can write a stored procedure that will accept a list of phone numbers and return the names of the employees associated with the phone numbers. So, the stored stored procedure should return three columns: PhoneNumber, FirstName and LastName.
--You know that you can harness the power of table type parameters to solve this problem.
--First, we will create a User-Defined Table Type to hold the phone numbers.
--Then, we will create a stored procedure that will accept the table type we created as a parameter. The stored procedure will join this list of phone numbers to the PhoneNumber column in Person.PersonPhone. We can then join Person.Person(where the names are) using BusinessEntityID.
--Lastly, we will test our creation by passing our stored procedure a list of phone numbers.
--This is a tough challenge. Make sure to take time to look at the tables involved. Start out by crafting a simple query to join the Person.PersonPhone and Person.Person tables. Then, work on crafting the stored procedure.

CREATE TYPE PhoneNumbers AS TABLE (
    PhoneNumber varchar(20)
)

CREATE PROCEDURE SelectNamesByPhoneNumbers
    @numbers PhoneNumbers  READONLY
AS
BEGIN
    --select firstName, lastName, PhoneNumber
    SELECT p.[firstName], p.[lastName], pp.[PhoneNumber]
    FROM Person.PersonPhone pp
    --join @numbers with Person.PersonPhone (PhoneNumber)
    JOIN @numbers n
    ON pp.[PhoneNumber] = n.[PhoneNumber]
    --join Person.PersonPhone with Person.Person (BusinessEntityID)
    JOIN Person.Person p
    ON pp.[BusinessEntityID] = p.[BusinessEntityID]
END



-- Create Table from another dataset
-- In this case we are using another table, using a SELECT QUERY

USE EMPLOYEE;
DROP TABLE IF EXISTS departmentdemo;

CREATE TABLE departmentdemo AS
SELECT * FROM department; 

-- SELECT * FROM department;
SELECT * FROM departmentdemo;
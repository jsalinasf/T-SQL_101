DROP DATABASE IF EXISTS EMPLOYEE;
CREATE DATABASE EMPLOYEE;
USE EMPLOYEE;

CREATE TABLE Department
(
	departmentNo INT PRIMARY KEY,
    departmentName VARCHAR(20) NOT NULL,
    departmentLoc VARCHAR(50) NOT NULL
);

INSERT INTO Department (departmentNo, departmentName, departmentLoc)
VALUE
(1,'Engg','Texas');

SELECT * FROM Department;
drop database if exists EMPLOYEE;

create database EMPLOYEE;

use EMPLOYEE;

create table Department
(
	departmentNo INT Primary Key,
    departmentName VARCHAR(20) NOT NULL,
    departmentLoc VARCHAR(50) NOT NULL
);

INSERT INTO Department (departmentNo, departmentName, departmentLoc)
VALUE
(1,'Engg','Texas');

SELECT * from Department;
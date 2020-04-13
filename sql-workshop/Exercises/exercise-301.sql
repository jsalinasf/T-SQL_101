DROP DATABASE IF EXISTS employeedemo;

CREATE DATABASE IF NOT EXISTS employeedemo;

USE employeedemo;

DROP TABLE IF EXISTS department;

CREATE TABLE IF NOT EXISTS department
(
	dno INT PRIMARY KEY,
    dname VARCHAR(30) UNIQUE NOT NULL,
    dlocation VARCHAR(30) UNIQUE NOT NULL    
);

CREATE TABLE IF NOT EXISTS employee
(
	eNo char(4) PRIMARY KEY,
    eName VARCHAR(30) NOT NULL,
    eJob VARCHAR(30) NOT NULL,
    eManager char(4),
    eJoinDate TIMESTAMP NOT NULL,
    eGender CHAR(1) CONSTRAINT gender_chk CHECK (eGender IN ('M','F')),
    eSalary DECIMAL(8,2) DEFAULT 0,
    eCommission DECIMAL(8,2) DEFAULT 0,
    eDeptNo INT NOT NULL,
    FOREIGN KEY FK_department_dno(eDeptNo) REFERENCES department(dno)
);

-- SHOW TABLES IN employeedemo;

-- SHOW COLUMNS FROM department;

SHOW COLUMNS FROM employee;

INSERT INTO department
VALUES
(
	1,'IT','Texas'
);

INSERT INTO employee (eNo, eName, eJob, eManager, eJoinDate, eGender, eSalary, eCommission, eDeptNo)
VALUES
(
	'A001','May Parker','IT Help Desk','',NOW(),'F',1250,300,1
);

SELECT * FROM employee;
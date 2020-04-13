DROP DATABASE IF EXISTS employeedemo;

CREATE DATABASE IF NOT EXISTS employeedemo;

USE employeedemo;

DROP TABLE IF EXISTS department;

CREATE TABLE IF NOT EXISTS department
(
	dno INT NOT NULL,
    dname VARCHAR(30) UNIQUE NOT NULL,
    dlocation VARCHAR(30) UNIQUE NOT NULL
);

SELECT * FROM department




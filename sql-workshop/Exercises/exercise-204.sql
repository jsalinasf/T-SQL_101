USE employee;

DELETE FROM department
WHERE departmentNo > 2;

SELECT * FROM employee.department;

INSERT INTO department (departmentName, departmentLoc)
VALUES
('Sales','LV');

DELETE FROM department
WHERE departmentNo = 5;

SELECT * FROM employee.department;

ALTER TABLE department AUTO_INCREMENT = 3;

INSERT INTO department (departmentName, departmentLoc)
VALUES
('Sales','LV');

SELECT * FROM employee.department;

ALTER TABLE department AUTO_INCREMENT = 1;

INSERT INTO department (departmentName, departmentLoc)
VALUES
('IT','LA');

SELECT * FROM employee.department;

DELETE FROM department
WHERE departmentNo = 5;

INSERT INTO department (departmentName, departmentLoc)
VALUES
('IT','MI');

ALTER TABLE department AUTO_INCREMENT = 1;

INSERT INTO department (departmentName, departmentLoc)
VALUES
('IT','TX');

SELECT * FROM employee.department;

DELETE FROM department
WHERE departmentNo > 4;
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


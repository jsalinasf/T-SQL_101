USE Employee;
DROP TABLE IF EXISTS Department;

CREATE TABLE Department
(
	departmentNo INT PRIMARY KEY AUTO_INCREMENT,
    departmentName VARCHAR(20) NOT NULL,
    departmentLoc VARCHAR(50) DEFAULT 'NJ',   
    departmentEstDate DATETIME DEFAULT NOW()
);

INSERT INTO Department (departmentName)
VALUES
('MyDepartment');

SELECT * FROM Department;
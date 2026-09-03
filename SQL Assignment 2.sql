CREATE DATABASE Company;  -- Create databse
USE Company;

-- Create Department Table
CREATE TABLE Departments(
						Department_ID int PRIMARY KEY,
                        Department_Name VARCHAR(100)
                         );

-- Create Location Table
CREATE TABLE Location(
					Location_ID INT PRIMARY KEY,
                    Location_NAME VARCHAR(30)
                    );
                    
-- CREATE Employees Table
CREATE TABLE Employees(
					Employee_ID INT PRIMARY KEY,
                    Employee_NAME VARCHAR(50),
                    Gender ENUM('M','F'),
                    Age INT,
                    Hire_Date DATE,
                    Designation VARCHAR(100),
                    Department_ID INT,
                    FOREIGN KEY (Department_ID) REFERENCES Departments(Department_ID),
                    Location_ID INT,
                    FOREIGN KEY (Location_ID) REFERENCES Location(Location_ID),
                    Salary DECIMAL(10,2)
                    );
                    
SELECT * FROM Departments; -- Display Departments Table
SELECT * FROM Location;    -- Display Location Table
SELECT * FROM Employees;   -- Display Employees Table

ALTER TABLE Employees      -- Alter table to add email column
ADD Email VARCHAR(100);

ALTER TABLE Employees      
MODIFY Designation VARCHAR(200);

ALTER TABLE Employees
DROP Age;

ALTER TABLE Employees
RENAME COLUMN Hire_Date to Date_of_Joining;

RENAME TABLE Departments TO Departments_Info;

RENAME TABLE Location TO Locations;

TRUNCATE TABLE Employees;

DROP TABLE Employees;

DROP DATABASE Company;

DROP DATABASE IF EXISTS Company;

CREATE DATABASE Company;

USE Company;

CREATE TABLE Departments(
						Department_ID int PRIMARY KEY,
                        Department_Name VARCHAR(100)
                         );
                         
ALTER TABLE Departments
MODIFY Department_Name VARCHAR(100) UNIQUE NOT NULL;

CREATE TABLE Location(
					Location_ID INT PRIMARY KEY AUTO_INCREMENT,
                    Location_NAME VARCHAR(30) UNIQUE NOT NULL
                    );
                    
SELECT * FROM Location;

CREATE TABLE Employees(
					Employee_ID INT PRIMARY KEY,
                    Employee_NAME VARCHAR(50) NOT NULL,
                    Gender CHAR(1) CHECK (Gender IN('M','F')),
                    Age INT CHECK (Age>18),
                    Hire_Date DATE DEFAULT(CURRENT_DATE),
                    Designation VARCHAR(100),
                    Department_ID INT,
                    FOREIGN KEY (Department_ID) REFERENCES Departments(Department_ID),
                    Location_ID INT,
                    FOREIGN KEY (Location_ID) REFERENCES Location(Location_ID),
                    Salary DECIMAL(10,2)
                    );
                    
SELECT * FROM Departments;
SELECT * FROM Location;
SELECT * FROM Employees;

INSERT INTO departments (department_id, department_name) VALUES
(1, 'Software Development'),
(2, 'Marketing'),
(3, 'Data Science'),
(4, 'Human Resources'),
(5, 'Product Management'),
(6, 'Content Creation'),
(7, 'Finance'),
(8, 'Design'),
(9, 'Research and Development'),
(10, 'Customer Support'),
(11, 'Business Development'),
(12, 'IT'),
(13, 'Operations');

SELECT * FROM departments;

INSERT INTO location (Location_ID, Location_NAME) VALUES
(1,'Chennai'),
(2,'Bangalore'),
(3,'Hyderabad'),
(4,'Pune');

INSERT INTO employees (employee_id, employee_name, gender, age, hire_date, designation, department_id, location_id, salary) VALUES
(5001, 'Vihaan Singh', 'M', 27, '2015-01-20', 'Data Analyst', 3, 4, 60000),
(5002, 'Reyansh Singh', 'M', 31, '2015-03-10', 'Network Engineer', 12, 1, 80000),
(5003, 'Aaradhya Iyer', 'F', 26, '2015-05-20', 'Customer Support Executive', 10, 2, 45000),
(5004, 'Kiara Malhotra', 'F', 29, '2015-07-05', NULL, 8, 3, 70000),
(5005, 'Anvi Chaudhary', 'F', 25, '2015-09-11', 'Business Development Executive', 11, 1, 55000),
(5006, 'Dhruv Shetty', 'M', 28, '2015-11-20', 'UI Developer', 8, 2, 65000),
(5007, 'Anushka Singh', 'F', 32, '2016-01-15', 'Marketing Manager', 2, 3, 90000),
(5008, 'Diya Jha', 'F', 27, '2016-03-05', 'Graphic Designer', 8, 4, 70000),
(5009, 'Kiaan Desai', 'M', 30, '2016-05-20', 'Sales Executive', 11, 3, 55000),
(5010, 'Atharv Yadav', 'M', 29, '2016-07-10', 'Systems Administrator', 12, 4, 80000),
(5011, 'Saanvi Patel', 'F', 28, '2016-09-20', 'Marketing Analyst', 2, 1, 60000),
(5012, 'Myra Verma', 'F', 26, '2016-11-05', 'Operations Manager', 13, 2, 95000),
(5013, 'Arnav Rao', 'M', 33, '2017-01-20', 'Customer Success Manager', 10, 3, 75000),
(5014, 'Vihaan Mohan', 'M', 30, '2017-03-10', 'Supply Chain Analyst', 10, 2, 60000),
(5015, 'Ishaan Kumar', 'M', 27, '2017-05-20', 'Financial Analyst', 7, 1, 85000),
(5016, 'Zoya Khan', 'F', 31, '2017-07-05', 'Legal Counsel', 4, 4, 100000),
(5017, 'Kabir Nair', 'M', 28, '2017-09-11', 'IT Support Specialist', 12, 2, 80000),
(5018, 'Ishan Mishra', 'M', 25, '2017-11-20', 'Research Scientist', 9, 3, 75000),
(5019, 'Ishika Patel', 'F', 29, '2018-01-15', 'Talent Acquisition Specialist', 4, 4, 55000),
(5020, 'Aarav Nair', 'M', 32, '2018-03-05', 'Software Engineer', 1, 1, 90000),
(5021, 'Advik Kapoor', 'M', 26, '2018-05-20', 'Finance Analyst', 7, 3, 85000),
(5022, 'Aadhya Iyengar', 'F', 28, '2018-07-10', 'HR Specialist', 4, 4, 60000),
(5023, 'Anika Paul', 'F', 30, '2018-09-20', 'Public Relations Specialist', 2, 2, 70000),
(5024, 'Aryan Shetty', 'M', 27, '2018-11-05', 'Product Manager', 5, 1, 95000),
(5025, 'Avni Iyengar', 'F', 31, '2019-01-20', 'Data Scientist', 3, 4, 100000),
(5026, 'Vivaan Singh', 'M', 29, '2019-03-10', 'Business Analyst', 3, 2, 75000),
(5027, 'Ananya Paul', 'F', 32, '2019-05-20', 'Content Writer', 6, 3, 60000),
(5028, 'Anaya Kapoor', 'F', 26, '2019-07-05', 'Event Coordinator', 6, 1, 60000),
(5029, 'Arjun Kumar', 'M', 33, '2019-09-11', 'Quality Assurance Analyst', 12, 2, 80000),
(5030, 'Sara Iyer', 'F', 28, '2019-11-20', 'Project Manager', 5, 1, 90000);

-- Distinct Values
SELECT DISTINCT Salary From employees;

-- ALIAS (AS)
SELECT Age AS Employee_Age, salary AS Employee_Salary
FROM employees;

-- WHERE CLAUSE & OPERATORS

SELECT Employee_NAME, Salary
FROM employees
WHERE Salary>50000 AND Hire_Date<'2016-01-01';

SELECT Employee_NAME, Salary, Hire_Date
FROM employees
WHERE Salary>50000 AND Hire_Date<'2016-01-01';

UPDATE employees
SET Designation = 'Data Scientist'
WHERE Designation IS NULL;

SET SQL_SAFE_UPDATES = 0;
SELECT * FROM employees;

-- Order by
SELECT *
FROM employees
ORDER BY Department_ID ASC, Salary DESC;

-- Limit
SELECT Employee_ID, Employee_NAME, Hire_Date
FROM employees
WHERE YEAR(Hire_Date) = 2018
ORDER BY Hire_Date ASC
LIMIT 5;

-- AGGREGATE FUNCTIONS
SELECT SUM(Salary)
FROM employees
GROUP BY Department_ID
HAVING Department_ID = 7;

-- GROUP BY
SELECT l.Location_Name, MAX(e.Salary) AS Maximum_Salary
FROM employees e
JOIN location l
ON e.Location_ID = l.Location_ID
GROUP BY l.Location_Name;

SELECT AVG(Salary)
FROM employees
GROUP BY Designation
HAVING Designation LIKE '%Analyst%';

SELECT Designation, AVG(Salary) AS Designation_Avg_Salary
FROM employees
GROUP BY Designation
HAVING Designation LIKE '%Analyst%';

-- Having
SELECT d.Department_Name, COUNT(DISTINCT e.Employee_ID) AS Employee_Count
FROM employees e
JOIN departments d
on e.department_id = d.Department_ID
GROUP BY d.Department_Name
HAVING COUNT(DISTINCT e.Employee_ID) > 3;

SELECT L.*, AVG(e.Age)
FROM employees e
JOIN Location L
ON e.Location_ID = L.location_ID
WHERE Gender = 'F' AND Age<30
GROUP BY Location_ID;

-- Inner join
SELECT e.Employee_NAME, e.Designation, d.Department_Name
FROM employees e
INNER JOIN departments d
on e.Department_ID = d.Department_ID;

SELECT * FROM departments;
SELECT * FROM employees;

-- Left join
SELECT d.Department_ID, d.Department_Name, count(e.employee_ID) AS Employee_Count
FROM departments d
LEFT JOIN employees e
on d.Department_ID = e.Department_ID
GROUP BY Department_ID;

-- Right join
SELECT l.Location_ID, L.Location_NAME, e.Employee_NAME
FROM employees e
RIGHT JOIN location l
on e.Location_ID = l.Location_ID;

-- Cross join
SELECT d.Department_Name, l.Location_NAME
FROM location l
cross join departments d;

-- Self join
SELECT 
    e1.employee_name AS employee1,
    e2.employee_name AS employee2,
    e1.department_id
FROM employees e1
JOIN employees e2
    ON e1.department_id = e2.department_id
    AND e1.employee_id < e2.employee_id;
    
-- Rank
SELECT
    employee_name,
    salary,
    RANK() OVER (ORDER BY salary DESC) AS salary_rank
FROM employees;

-- Dense Rank
SELECT Department_ID, employee_name, Salary, DENSE_RANK() OVER (PARTITION BY department_id ORDER BY Salary Desc) AS salary_rank
From employees;

-- Running total salary by department

SELECT 
employee_name, 
department_id, salary, 
SUM(salary) OVER (
				Partition by department_id 
                order by employee_id) AS running_total_salary
FROM employees;

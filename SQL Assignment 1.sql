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

-- display table
SELECT * FROM Departments
SELECT * FROM Dept_Employee
SELECT * FROM manager
SELECT * FROM employee
SELECT * FROM  title
SELECT * FROM salaries

--Create Table
CREATE TABLE Departments(
	dept_no VARCHAR PRIMARY KEY Not NULL ,
	department VARCHAR(30)
);
--Create Table DEPT_Employee

CREATE TABLE Dept_Employee(
	Emp_no VARCHAR,
    dept_no VARCHAR(20) ,
	Foreign key (dept_no) REFERENCES Departments(dept_no),
    Foreign key(emp_no) REFERENCES employee(emp_no),
	PRIMARY KEY (dept_no,Emp_no)
);

-- Create Table
CREATE TABLE manager (
	dept_no VARCHAR(10),
	FOREIGN KEY (dept_no) REFERENCES Departments(dept_no),
	Emp_no  VARCHAR PRIMARY KEY NOT NULL,
    Foreign key(emp_no) REFERENCES employee(emp_no)
);

-- CREATE table Employee
ALTER DATABASE employee_db SET datestyle TO "ISO, MDY";

CREATE TABLE employee(
	emp_no VARCHAR PRIMARY KEY NOT NULL,
	emp_title_id VARCHAR,
	birth_date DATE,
	first_name VARCHAR,
	last_name VARCHAR,
	sex CHAR,
	hire_date DATE
	);

-- CREATE TABLE salary

CREATE TABLE salaries( emp_no VARCHAR PRIMARY KEY NOT NULL,
					  salary INT,
					  Foreign Key(emp_no) REFERENCES employee(emp_no)
);

-- CREATE TABLE titles
CREATE TABLE title(
	                 title_id VARCHAR,
					 title VARCHAR,
					 PRIMARY KEY (title_id),
	                 Foreign Key(emp_no) REFERENCES employee(emp_no)
					  
);

SHOW datestyle;






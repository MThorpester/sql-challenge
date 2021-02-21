DROP TABLE IF EXISTSdept_manager;
DROP TABLE IF EXISTS dept_emp;
DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS salaries;
DROP TABLE IF EXISTS employee;
DROP TABLE IF EXISTS titles;

CREATE TABLE titles (
	title_id VARCHAR(5) PRIMARY KEY,
	title VARCHAR(30)
);
SELECT * FROM titles LIMIT 100;

CREATE TABLE employee (
	emp_no INTEGER PRIMARY KEY,
	emp_title_id VARCHAR (5) REFERENCES titles,
	birth_date DATE,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	sex VARCHAR(2),
	hire_date DATE
);
SELECT * FROM employee LIMIT 100;

DROP TABLE IF EXISTS salaries;
CREATE TABLE salaries (
	emp_no INTEGER REFERENCES employee,
	salary INTEGER,
	PRIMARY KEY(emp_no)
	);
SELECT * FROM salaries LIMIT 100;	

CREATE TABLE departments (
	dept_no VARCHAR(5) PRIMARY KEY,
	dept_name VARCHAR(30)
	);
SELECT * FROM departments LIMIT 100;

CREATE TABLE dept_emp (
	emp_no INTEGER REFERENCES employee,
	dept_no VARCHAR(5) REFERENCES departments,
	PRIMARY KEY(dept_no,emp_no)
);
SELECT * FROM dept_emp LIMIT 100;

CREATE TABLE dept_manager (
	dept_no VARCHAR(5) REFERENCES departments,
	emp_no	INTEGER REFERENCES employee,
	PRIMARY KEY(emp_no, dept_no)
);
SELECT * FROM dept_manager LIMIT 100;
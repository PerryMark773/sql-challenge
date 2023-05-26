-- Drop table if already created
DROP TABLE departments;

-- Create the departments table
CREATE TABLE departments (
	dept_no VARCHAR(8),
	dept_name VARCHAR(25)
);

-- Query entire table
SELECT * 
FROM departments;
------------------------------------------------------------------------------------------------------
-- Drop table if already created
DROP TABLE dept_emp;

-- Create the dept_emp table
CREATE TABLE dept_emp (
	emp_no INT,
	dept_no VARCHAR(8)
);

-- Query entire table
SELECT * 
FROM dept_emp;
------------------------------------------------------------------------------------------------------
-- Drop table if already created
DROP TABLE dept_manager;

-- Create the dept_manager table
CREATE TABLE dept_manager (
	dept_no VARCHAR(8),
	emp_no INT
);

-- Query entire table
SELECT * 
FROM dept_manager;
------------------------------------------------------------------------------------------------------
-- Drop table if already created
DROP TABLE employees;

-- Create the employees table
CREATE TABLE employees (
	emp_no INT
	emp_title_id VARCHAR(10)
	birth_date VARCHAR(10)
	first_name VARCHAR(30)
	last_name VARCHAR(30)
	sex VARCHAR(3)
	hire_date VARCHAR(10)
);

-- Query entire table
SELECT * 
FROM employees;
------------------------------------------------------------------------------------------------------
-- Drop table if already created
DROP TABLE salaries;

-- Create the salaries table
CREATE TABLE salaries (
	emp_no INT,
	salary INT
);

-- Query entire table
SELECT * 
FROM salaries;
------------------------------------------------------------------------------------------------------
-- Drop table if already created
DROP TABLE titles;

-- Create the titles table
CREATE TABLE titles (
	title_id VARCHAR(10)
	title VARCHAR(10)
);

-- Query entire table
SELECT * 
FROM titles;
------------------------------------------------------------------------------------------------------
-- Query 1 "List the employee number, last name, first name, sex, and salary of each employee."
-- Perform an INNER JOIN on the two tables
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees as e
INNER JOIN salaries as s ON
e.emp_no = s.emp_no;
------------------------------------------------------------------------------------------------------
-- Query 2 "List the first name, last name, and hire date for the employees who were hired in 1986."
-- Select relevant columns, filter using WHERE, LIKE to identify hire dates containg 1986
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date LIKE '%1986%';
------------------------------------------------------------------------------------------------------
-- Query 3 "List the manager of each department along with their department number, department name, \
-- employee number, last name, and first name."
SELECT 
FROM departments as d
INNER JOIN dept_manager as m ON
d.dempt_no = m.dempt_no;
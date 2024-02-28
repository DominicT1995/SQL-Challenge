CREATE TABLE titles (
	title_id VARCHAR(20) PRIMARY KEY,
	title VARCHAR(20) NOT NULL

);

SELECT * FROM titles;
-----------------------------------------------------------
CREATE TABLE departments (
	dept_no VARCHAR(20) PRIMARY KEY,
	dept_name VARCHAR(20) NOT NULL

);

SELECT * FROM departments;
-----------------------------------------------------------
CREATE TABLE employees (
	emp_no INT PRIMARY KEY,
	emp_title_id VARCHAR(20) NOT NULL,
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id),
	birth_date VARCHAR(20) NOT NULL,
	first_name VARCHAR(20) NOT NULL,
	last_name VARCHAR(20) NOT NULL,
	sex VARCHAR(20) NOT NULL,
	hire_date VARCHAR(20) NOT NULL

);

SELECT * FROM employees;
-----------------------------------------------------------
CREATE TABLE salaries (
	emp_no INT,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	salary INT

);

SELECT * FROM salaries;
-----------------------------------------------------------
CREATE TABLE dept_emp (
	emp_no INT,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	dept_no VARCHAR(20) NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)

);

SELECT * FROM dept_emp;
-----------------------------------------------------------
CREATE TABLE dept_manager (
	dept_no VARCHAR(20) NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	emp_no INT,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)

);

SELECT * FROM dept_manager;
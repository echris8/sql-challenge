-- Creating tables

DROP TABLE departments;

CREATE TABLE departments (
  dept_no VARCHAR(25),
  dept_name VARCHAR(25) NOT NULL, 
  PRIMARY KEY (dept_no)
);

DROP TABLE titles

CREATE TABLE titles(
	title_id VARCHAR(5),
	title VARCHAR(20) NOT NULL, 
	PRIMARY KEY (title_id)
);

DROP TABLE employees

CREATE TABLE employees(
	emp_no INT NOT NULL, 
	emp_title_id VARCHAR(25) NOT NULL, 
	birth_date DATE NOT NULL,
	first_name VARCHAR(30) NOT NULL, 
	last_name VARCHAR(30) NOT NULL,
	sex VARCHAR(5) NOT NULL, 
	hire_date DATE NOT NULL, 
	PRIMARY KEY (emp_no),
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);

DROP TABLE dept_emp;

CREATE TABLE dept_emp (
	emp_no SERIAL NOT NULL, 
	dept_no VARCHAR NOT NULL, 
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

DROP TABLE dept_manager

CREATE TABLE dept_manager(
	dept_no VARCHAR(25) NOT NULL, 
	emp_no INT NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);


DROP TABLE salaries

CREATE TABLE salaries(
	emp_no INT NOT NULL,
	salary INT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

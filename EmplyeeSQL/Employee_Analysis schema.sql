-- List the employee number, last name, first name, sex, and salary of each employee
-- Select correct columns from employee and join salary infomration from salary table

SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
FROM employees
JOIN salaries ON employees.emp_no = salaries.emp_no;

-- List the first name, last name, and hire date for employees that were hired in 1986
-- Select columns
-- Extract hire date in 1986

SELECT employees.last_name, employees.first_name, employees.hire_date
FROM employees 
WHERE EXTRACT(YEAR FROM hire_date) = 1986;

--List manager of each department along with their department number, department name, employee number, last name, and first name
-- Select columns, join departments with dept manager and then employees following the order of table data 
SELECT dept_manager.dept_no, departments.dept_name, dept_manager.emp_no, employees.last_name, employees.first_name
FROM dept_manager  
JOIN departments ON dept_manager.dept_no = departments.dept_no
JOIN employees ON dept_manager.emp_no = employees.emp_no;

--List department number for each employee with the employee number, last name, first name, and department name
-- Select columns join the department table to emlpoyee table
SELECT departments.dept_no, employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM employees
JOIN dept_emp ON employees.emp_no = dept_emp.emp_no
JOIN departments ON dept_emp.dept_no = departments.dept_no

--List first name, last name, and sex of each employee whose first name is Hercules and last name starts with B
-- Select columns from employees, then narrow to selected ones
SELECT employees.first_name, employees.last_name, employees.sex
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

--List each employee in Sales department, including their employee number, last name, and first name
-- Select columns from employees, dept_emp, and departments using joins, then narrow to those in Sales department
SELECT departments.dept_name, employees.emp_no, employees.last_name, employees.first_name
FROM employees
JOIN dept_emp ON employees.emp_no = dept_emp.emp_no
JOIN departments ON dept_emp.dept_no = departments.dept_no
WHERE departments.dept_name = 'Sales';

--List each employee in the Sales and Development departments, including their employee number, last name, first name, and deparmtent name
--Select columns from employees, dept_emp, and departments using joins, then narrow to Sales and Development
SELECT departments.dept_name, employees.emp_no, employees.last_name, employees.first_name
FROM employees
JOIN dept_emp ON employees.emp_no = dept_emp.emp_no
JOIN departments ON dept_emp.dept_no = departments.dept_no
WHERE departments.dept_name = 'Sales' OR departments.dept_name = 'Development';

--List frequency counts (descending) of all employee last names (finding how many share last name)
--Select last name from employee table and count frequency, group, then order by descending 
SELECT employees.last_name, COUNT(*) as frequency
FROM employees
GROUP BY employees.last_name
ORDER BY employees.last_name DESC;



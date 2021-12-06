-- CREATE TABLE departments (
--     dept_no VARCHAR(4)  NOT NULL ,
--     dept_name VARCHAR(30)  NOT NULL ,
--     PRIMARY KEY (
--         dept_no
--     )
-- );

-- CREATE TABLE dept_emp (
--     emp_no INT  NOT NULL ,
--     dept_no VARCHAR(4)  NOT NULL 
-- );

-- CREATE TABLE dept_manager (
--     dept_no VARCHAR(4)  NOT NULL ,
--     emp_no INT  NOT NULL 
-- );

-- CREATE TABLE employees (
--     emp_no INT  NOT NULL ,
--     emp_title_id VARCHAR(40)  NOT NULL ,
--     birth_date DATE  NOT NULL ,
--     first_name VARCHAR(40)  NOT NULL ,
--     last_name VARCHAR(40)  NOT NULL ,
--     sex VARCHAR(1)  NOT NULL ,
--     hire_date DATE  NOT NULL ,
--     PRIMARY KEY (
--         emp_no
--     )
-- );

-- CREATE TABLE salaries (
--     emp_no INT  NOT NULL ,
--     salary INT  NOT NULL 
-- );

-- CREATE TABLE titles (
--     title_id VARCHAR(5)  NOT NULL ,
--     title VARCHAR(40)  NOT NULL
-- );

-- Data Analysis Queries 
-- 1. List the following details of each employee: employee number, last name, first name, sex, and salary.
SELECT employees.emp_no, employees.first_name, employees.last_name, employees.sex, salaries.salary
FROM employees 
JOIN salaries
ON salaries.emp_no = employees.emp_no;


-- 2. List first name, last name, and hire date for employees who were hired in 1986.
-- Isolate years hired from employees table 
-- UPDATE employees
-- SET hire_date = CURRENT_DATE
-- WHERE EXTRACT(YEAR FROM hire_date) = 9999;

SELECT first_name, last_name, hire_date 
FROM employees
WHERE extract(year from hire_date) = 1986;

-- 3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.

SELECT departments.dept_no, departments.dept_name, dept_manager.emp_no,employees.first_name, employees.last_name
FROM departments
JOIN dept_manager
ON departments.dept_no = dept_manager.dept_no
JOIN employees
ON dept_manager.emp_no = employees.emp_no;

--  4. List the department of each employee with the following information: employee number, last name, first name, and department name.

SELECT dept_emp.emp_no, employees.first_name, employees.last_name, departments.dept_name
FROM dept_emp
JOIN employees
ON dept_emp.emp_no = employees.emp_no
JOIN departments 
ON dept_emp.dept_no = departments.dept_no;

-- 5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

SELECT first_name, last_name, sex 
FROM employees
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%';

-- 6. List all employees in the Sales department, including their employee number, last name, first name, and department name.

SELECT dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM dept_emp
JOIN employees
ON dept_emp.emp_no = employees.emp_no
JOIN departments 
ON dept_emp.dept_no = departments.dept_no
WHERE departments.dept_no = 'Sales';


-- 7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM dept_emp
JOIN employees
ON dept_emp.emp_no = employees.emp_no
JOIN departments 
ON dept_emp.dept_no = departments.dept_no
WHERE departments.dept_no = 'Sales'
OR departments.dept_no = 'Development';

-- 8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
SELECT 
COUNT(last_name) AS "frequency"
FROM employees
GROUP BY last_name
ORDER BY 
COUNT (last_name) DESC;



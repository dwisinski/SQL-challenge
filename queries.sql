-- Query 1
SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
FROM salaries
INNER JOIN employees ON employees.emp_no=salaries.emp_no
ORDER BY emp_no;

-- Query 2
SELECT last_name, first_name, hire_date
FROM employees
WHERE hire_date LIKE '%1986%'
ORDER BY hire_date, last_name;

-- Query 3
SELECT departments.dept_no, departments.dept_name, dept_manager.emp_no, employees.last_name, employees.first_name
FROM dept_manager
INNER JOIN departments ON departments.dept_no=dept_manager.dept_no
INNER JOIN employees ON dept_manager.emp_no=employees.emp_no
ORDER BY dept_no, last_name;

-- Query 4
SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM dept_emp
INNER JOIN employees ON employees.emp_no=dept_emp.emp_no
INNER JOIN departments ON dept_emp.dept_no=departments.dept_no
ORDER BY emp_no;

-- Query 5
SELECT last_name, first_name, sex
FROM employees
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%'
ORDER BY last_name;

-- Query 6
SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM dept_emp
INNER JOIN employees ON employees.emp_no=dept_emp.emp_no
INNER JOIN departments ON dept_emp.dept_no=departments.dept_no
WHERE departments.dept_name = 'Sales'
ORDER BY emp_no;

-- Query 7
SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM dept_emp
INNER JOIN employees ON employees.emp_no=dept_emp.emp_no
INNER JOIN departments ON dept_emp.dept_no=departments.dept_no
WHERE departments.dept_name = 'Sales' OR departments.dept_name = 'Development'
ORDER BY emp_no;

-- Query 8
SELECT last_name, COUNT(last_name) AS last_name_count
FROM employees
GROUP BY last_name
ORDER BY last_name_count DESC;

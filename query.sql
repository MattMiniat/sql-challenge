
-- Solution 1
/*
SELECT employees.emp_no, 
	employees.last_name, 
	employees.first_name, 
	employees.gender, 
	salaries.salary
FROM employees
INNER JOIN salaries ON
employees.emp_no = salaries.emp_no;
ORDER BY employees.emp_no;
*/

-- Solution 2
/*
SELECT *
FROM employees
WHERE hire_date between '1986-01-01' and '1986-12-31'
ORDER BY hire_date;
*/

-- Solution 3
/*SELECT dept_manager.emp_no AS "employee number",
	employees.last_name,
	employees.first_name,
	dept_manager.from_date,
	dept_manager.to_date,
	dept_manager.emp AS "department number",
	(SELECT departments.dept_name
		FROM departments
		WHERE departments.dept_no = dept_manager.emp) AS "department name"
FROM employees
INNER JOIN dept_manager ON
employees.emp_no = dept_manager.emp_no;
*/

--Solution 4
/*SELECT employees.emp_no,
	employees.last_name,
	employees.first_name,
	(SELECT departments.dept_name
		FROM departments
		WHERE departments.dept_no = dept_emp.dept_no) AS "department name"
FROM dept_emp
INNER JOIN employees ON
employees.emp_no = dept_emp.emp_no
ORDER BY employees.emp_no;
*/

-- Solution 5
/* SELECT *
FROM employees
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%';
*/

-- Solution 6
/* SELECT  employees.emp_no,
        employees.last_name,
        employees.first_name,
        departments.dept_name
FROM employees
    RIGHT JOIN dept_emp
        ON (employees.emp_no = dept_emp.emp_no)
    RIGHT JOIN departments
        ON (dept_emp.dept_no = departments.dept_no)
WHERE departments.dept_name = 'Sales'
ORDER BY employees.emp_no; 
*/

--Solution 7
/* SELECT  employees.emp_no,
        employees.last_name,
        employees.first_name,
        departments.dept_name
FROM employees
    RIGHT JOIN dept_emp
        ON (employees.emp_no = dept_emp.emp_no)
    RIGHT JOIN departments
        ON (dept_emp.dept_no = departments.dept_no)
WHERE departments.dept_name IN ('Sales', 'Development')
ORDER BY employees.emp_no;
*/

--Solutions 8
/* SELECT last_name, COUNT(last_name)
FROM employees
GROUP BY last_name
ORDER BY COUNT(last_name) DESC;
*/
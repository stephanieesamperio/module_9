SELECT employees.emp_no, 
	employees.last_name, 
	employees.first_name, 
	employees.sex, 
	salaries.salaries
FROM employees
INNER JOIN salaries ON employees.emp_no = salaries.emp_no

SELECT employees.first_name, 
	employees.last_name,
	employees.hire_date 
FROM employees
WHERE EXTRACT(YEAR FROM hire_date)=1986;


SELECT departments.dept_no, 
	departments.dept_name, 
	dept_manager.emp_no, 
	employees.last_name, 
	employees.first_name
FROM departments
INNER JOIN dept_manager ON departments.dept_no = dept_manager.dept_no
INNER JOIN employees ON dept_manager.emp_no = employees.emp_no;


SELECT dept_emp.emp_no, 
	employees.last_name, 
	employees.first_name, 
	departments.dept_name
FROM dept_emp
INNER JOIN employees ON dept_emp.emp_no = employees.emp_no
INNER JOIN departments ON dept_emp.dept_no = departments.dept_no;


SELECT employees.first_name, 
	employees.last_name, 
	employees.sex
FROM employees
WHERE first_name = 'Hercules' AND last_name Like 'B%'


SELECT departments.dept_name, 
	employees.last_name, 
	employees.first_name
FROM dept_emp
INNER JOIN employees ON dept_emp.emp_no = employees.emp_no
INNER JOIN departments ON dept_emp.dept_no = departments.dept_no
WHERE departments.dept_name = 'Sales';


SELECT dept_emp.emp_no, 
	employees.last_name, 
	employees.first_name, 
	departments.dept_name
FROM dept_emp
INNER JOIN employees ON dept_emp.emp_no = employees.emp_no
INNER JOIN departments ON dept_emp.dept_no = departments.dept_no
WHERE dep.dept_name IN ("Sales", "Development");


SELECT last_name,
COUNT(last_name) AS frequency
FROM employees
GROUP BY last_name
ORDER BY
frequency DESC;
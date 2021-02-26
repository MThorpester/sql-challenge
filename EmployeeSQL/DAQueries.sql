-- List the following details of each employee: employee number, last name, first name, 
-- sex, and salary. Note: remove LIMIT clause to see all.
SELECT emp.emp_no, emp.last_name, emp.first_name, emp.sex, sal.salary
FROM employee emp, salaries sal
WHERE emp.emp_no = sal.emp_no
LIMIT 100;

-- List first name, last name, and hire date for employees who were hired in 1986.
-- Note: remove LIMIT clause to see all.
SELECT first_name, last_name, hire_date
FROM employee
WHERE EXTRACT(year FROM hire_date) = '1986';
LIMIT 100;

-- List the manager of each department with the following information: 
-- department number, department name, the manager's employee number, last name, first name.
SELECT dept.dept_no, dept.dept_name, emp.emp_no, emp.last_name, emp.first_name
FROM departments dept
INNER JOIN dept_manager dm ON dept.dept_no = dm.dept_no
INNER JOIN employee emp ON emp.emp_no = dm.emp_no
ORDER BY dept.dept_no;

-- List the department of each employee with the following information: employee number, 
-- last name, first name, and department name.
-- Note: remove LIMIT clause to see all.
SELECT  emp.emp_no, emp.last_name, emp.first_name, dept.dept_name
FROM departments dept
INNER JOIN dept_emp de ON dept.dept_no = de.dept_no
INNER JOIN employee emp ON emp.emp_no = de.emp_no
ORDER BY de.emp_no
LIMIT 100;

-- List first name, last name, and sex for employees whose first name is "Hercules" and 
-- last names begin with "B."
SELECT first_name, last_name, sex
FROM employee
WHERE first_name = 'Hercules' AND last_name like 'B%';

-- List all employees in the Sales department, including their employee number, last name,
-- first name, and department name.
SELECT emp.emp_no, emp.last_name, emp.first_name, dept.dept_name
FROM departments dept
INNER JOIN dept_emp de ON dept.dept_no = de.dept_no
INNER JOIN employee emp ON emp.emp_no = de.emp_no
WHERE dept.dept_name = 'Sales';

-- List all employees in the Sales and Development departments, including their employee number,
-- last name, first name, and department name.
-- Note: remove LIMIT clause to see all.
SELECT emp.emp_no, emp.last_name, emp.first_name, dept.dept_name
FROM departments dept
INNER JOIN dept_emp de ON dept.dept_no = de.dept_no
INNER JOIN employee emp ON emp.emp_no = de.emp_no
WHERE dept.dept_name IN ('Sales','Development')
LIMIT 100; 

-- In descending order, list the frequency count of employee last names, i.e., how many employees
-- share each last name.
SELECT last_name, COUNT(*) AS "number_of_occurrences"
FROM employee
GROUP BY last_name
ORDER BY "number_of_occurrences" DESC;




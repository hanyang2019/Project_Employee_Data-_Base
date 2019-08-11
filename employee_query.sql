--1.List the following details of each employee: employee number, last name, first name, gender, and salary.
SELECT e.emp_no, last_name, first_name, gender, salary
FROM employees AS e
LEFT JOIN salaries AS s
ON e.emp_no=s.emp_no;

--2.List employees who were hired in 1986.
SELECT * FROM employees
WHERE EXTRACT(YEAR FROM hire_date)=1986;

--3.List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name, and start and end employment dates.
SELECT dm.dept_no, d.dept_name, dm.emp_no, last_name, first_name, from_date, to_date
FROM dept_manager AS dm
JOIN employees AS e ON dm.emp_no=e.emp_no
JOIN departments AS d ON dm.dept_no=d.dept_no;

--4.List the department of each employee with the following information: employee number, last name, first name, and department name.
SELECT e.emp_no, last_name, first_name, dept_name
FROM employees AS e
JOIN dept_emp AS de ON de.emp_no=e.emp_no
JOIN departments AS d ON d.dept_no=de.dept_no
ORDER BY e.emp_no;

--5.List all employees whose first name is "Hercules" and last names begin with "B."
SELECT * FROM employees
WHERE first_name='Hercules' AND last_name LIKE 'B%';

--6.List all employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT e.emp_no, last_name, first_name, dept_name
FROM employees AS e
JOIN dept_emp AS de ON de.emp_no=e.emp_no
JOIN departments AS d ON d.dept_no=de.dept_no
WHERE dept_name='Sales';

--7.List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT e.emp_no, last_name, first_name, dept_name
FROM employees AS e
JOIN dept_emp AS de ON de.emp_no=e.emp_no
JOIN departments AS d ON d.dept_no=de.dept_no
WHERE dept_name='Sales' OR dept_name='Development';

--8.In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
SELECT DISTINCT last_name, Count(last_name) FROM employees
GROUP BY last_name
ORDER BY Count(last_name) DESC;

--Bonus Average salary by title
SELECT title, ROUND(AVG(salary::numeric),2) AS "Average Salary"
FROM employees AS e
JOIN salaries AS s ON e.emp_no=s.emp_no
JOIN titles AS t ON e.emp_no=t.emp_no
GROUP BY title;






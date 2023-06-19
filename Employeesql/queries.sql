--List the employee number, last name, first name, sex, and salary of each employee
SELECT employee.emp_no,employee.first_name,employee.last_name,employee.sex ,employee.hire_date,salaries.salary
FROM employee
INNER JOIN salaries on employee.emp_no=salaries.emp_no;

--List the first name, last name, and hire date for the employees who were hired in 1986.
SELECT first_name,last_name,hire_date
FROM employee
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31'; 

--List the manager of each department along with their department number,
--department name, employee number, last name, and first name  
SELECT Departments.dept_no,Departments.department,manager.emp_no,employee.first_name,employee.last_name
FROM Departments
INNER JOIN manager on manager.dept_no=Departments.dept_no
INNER JOIN employee on employee.emp_no=manager.emp_no;

--List the department number for each employee along with that employee’s
--employee number, last name, first name, and department name (2 points)
SELECT Departments.dept_no,Departments.department,dept_employee.emp_no,employee.first_name,employee.last_name
FROM Departments
INNER JOIN dept_employee on dept_employee.dept_no=Departments.dept_no
INNER JOIN employee on employee.emp_no=dept_employee.emp_no;

--List first name, last name, and sex of each employee whose first name is 
--Hercules and whose last name begins with the letter B (2 points)
SELECT first_name,last_name,sex
FROM employee
WHERE first_name LIKE 'Hercules' AND last_name LIKE 'B%';

--List each employee in the Sales department, including their employee number, last name, and first name (2 points)
SELECT Departments.department,dept_employee.emp_no,employee.first_name,employee.last_name
FROM employee
LEFT JOIN dept_employee on dept_employee.emp_no=employee.emp_no
INNER JOIN Departments on dept_employee.dept_no=Departments.dept_no
WHERE departments.department='Sales';


--List each employee in the Sales and Development departments, including their employee number,
--last name, first name, and department name (4 points)
SELECT Departments.department,dept_employee.emp_no,employee.first_name,employee.last_name
FROM employee
LEFT JOIN dept_employee on dept_employee.emp_no=employee.emp_no
INNER JOIN Departments on dept_employee.dept_no=Departments.dept_no
WHERE departments.department='Sales' OR Departments.department ='Development';


--List the frequency counts, in descending order, of all the employee last names
--(that is, how many employees share each last name) (4 points)
SELECT last_name,COUNT(*) as frequency_count
FROM employee
Group BY last_name
ORDER BY frequency_count DESC;
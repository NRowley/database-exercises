# Using the example in the Associative Table Joins section as a guide, write a query that shows each department
# along with the name of the current manager for that department.

#     Find the name of all departments currently managed by women
#     Find the current titles of employees currently working in the Customer Service department
#     Find the current salary of all current managers.
#     Bonus Find the names of all current employees, their department name, and their current manager's name

USE employees;

DESCRIBE dept_manager;
SELECT *
FROM dept_manager;
DESCRIBE dept_emp;
SELECT *
FROM dept_emp;
DESCRIBE departments;
SELECT *
FROM departments;
DESCRIBE employees;
SELECT *
FROM employees;
DESCRIBE titles;
SELECT *
FROM titles;

SELECT d.dept_name AS department, CONCAT(e.last_name, ', ', e.first_name) AS manager
FROM employees AS e
         JOIN dept_manager AS dm
              on e.emp_no = dm.emp_no
         JOIN departments AS d
              ON dm.dept_no = d.dept_no
WHERE YEAR(to_date) = 9999;

SELECT d.dept_name AS department, CONCAT(e.last_name, ', ', e.first_name) AS manager
FROM employees AS e
         JOIN dept_manager AS dm
              on e.emp_no = dm.emp_no
         JOIN departments AS d
              ON dm.dept_no = d.dept_no
WHERE YEAR(to_date) = 9999
  AND e.gender = 'F';

#     Find the current titles of employees currently working in the Customer Service department
SELECT titles.title, COUNT(*) AS total
FROM titles
         JOIN dept_emp
              ON titles.emp_no = employees.dept_emp.emp_no
         JOIN departments
              ON departments.dept_no = employees.dept_emp.dept_no
WHERE (dept_name = 'Customer Service'
    AND YEAR(dept_emp.to_date) = 9999
    AND YEAR(titles.to_date) = 9999)
GROUP BY titles.title;

#     Find the current salary of all current managers.


SELECT departments.dept_name                                  AS Department,
       CONCAT(employees.first_name, ' ', employees.last_name) AS Department_Manager,
       salaries.salary                                        AS Salary
FROM employees
         JOIN employees.salaries
              ON employees.salaries.emp_no = employees.employees.emp_no
         JOIN employees.dept_manager
              ON employees.salaries.emp_no = dept_manager.emp_no
         JOIN employees.departments
              ON employees.dept_manager.dept_no = employees.departments.dept_no
WHERE (YEAR(employees.dept_manager.to_date) = 9999
    AND YEAR(employees.salaries.to_date) = 9999);

#     Bonus Find the names of all current employees, their department name, and their current manager's name
# SELECT CONCAT(employees.first_name, ' ', employees.first_name) AS Employee, employees.departments.dept_name AS Department, CONCAT(employees.first_name,' ',employees.last_name) AS Manager
# FROM employees.employees
# JOIN employees.dept_manager
# ON employees.emp_no = employees.dept_manager.emp_no
# JOIN employees.dept_manager
#     ON employees.dept_manager.dept_no = employees.departments.dept_no;



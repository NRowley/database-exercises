# Find all the employees with the same hire date as employee 101010 using a subquery.
# 69 Rows
# Find all the titles held by all employees with the first name Aamod.
# 314 total titles, 6 unique titles
# Find all the current department managers that are female.

USE employees;

SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date IN (SELECT hire_date
                    FROM employees
                    WHERE emp_no = 101010);

SELECT DISTINCT title
FROM titles
WHERE emp_no IN (SELECT emp_no
                 FROM employees
                 WHERE first_name LIKE 'Aamod');

SELECT first_name, last_name, gender
FROM employees
WHERE emp_no IN (SELECT emp_no
                 FROM dept_manager
                 WHERE YEAR(to_date) = 9999)
  AND gender = 'F';

# Find all the department names that currently have female managers
SELECT dept_name
FROM departments
WHERE dept_no IN (SELECT dept_no
                  FROM dept_manager
                  WHERE (YEAR(to_date) = 9999 AND emp_no IN (SELECT emp_no
                                                             FROM employees
                                                             WHERE gender = 'F')));

# Find the first and last name of the employee with the highest salary
# SELECT first_name, last_name
# FROM employees
# WHERE emp_no IN (SELECT salaries.emp_no
#                  FROM salaries)
# ;

describe salaries;
describe departments;
describe dept_manager;
SELECT *
FROM dept_manager;
describe employees;
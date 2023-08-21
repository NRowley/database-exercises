# Find all employees hired in the 90s and born on Christmas — 362 rows.
# Change the query for employees hired in the 90s and born on Christmas such
# that the first result is the oldest employee who was hired last. It should be Khun Bernini.
# For your query of employees born on Christmas and hired in the 90s,
# use datediff() to find how many days they have been working at the company (Hint: You might also need to use now() or curdate()).

USE employees;
DESCRIBE employees;

SELECT first_name, last_name, birth_date
FROM employees
WHERE month(birth_date) = 12
  AND day(birth_date) = 25;


SELECT first_name, last_name, birth_date, hire_date, DATEDIFF(NOW(),hire_date)
FROM employees
WHERE (month(birth_date) = 12
    AND day(birth_date) = 25
    AND year(hire_date) BETWEEN 1990 AND 1999)
ORDER BY hire_date DESC, birth_date DESC;

SELECT CONCAT(first_name, ' ', last_name), gender
FROM employees
WHERE gender = 'M'
  AND (
            first_name = 'Irena'
        OR first_name = 'Vidya'
        OR first_name = 'Maya'
    )
ORDER BY last_name DESC, first_name;

SELECT CONCAT(first_name, ' ', last_name), emp_no
FROM employees
WHERE last_name LIKE 'E%'
   AND last_name LIKE '%E';


SELECT last_name
FROM employees
WHERE last_name LIKE '%q%'
  AND last_name NOT LIKE '%qu%';

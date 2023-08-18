# Modify your first query to order by first name. The first result should be Irena Flexer and the last result should be Vidya Awdeh.
# Update the query to order by first name and then last name. The first result should now be Irena Acton and the last should be Vidya Zweizig.
# Change the ORDER BY clause so that you order by last name before first name. Your first result should still be Irena Acton but now the last result should be Maya Zyda.
# Update your queries for employees with 'e' in their last name to sort the results by their employee number. Make sure the employee numbers are in the correct order.
# Now reverse the sort order for both queries and compare results

USE employees;

SELECT first_name, last_name, gender
FROM employees
WHERE gender = 'M'
  AND (
            first_name = 'Irena'
        OR first_name = 'Vidya'
        OR first_name = 'Maya'
    )
ORDER BY last_name DESC, first_name;

SELECT last_name, emp_no
FROM employees
WHERE last_name LIKE '%E%'
ORDER BY emp_no DESC;


SELECT last_name
FROM employees
WHERE last_name LIKE '%q%'
  AND last_name NOT LIKE '%qu%';

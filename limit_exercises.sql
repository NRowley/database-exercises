# Create a new SQL script called limit_exercises.sql.
# MySQL provides a way to return only unique results from our queries with the keyword DISTINCT. For example, to find all the unique titles within the company, we could run the following query
#List the first 10 distinct last name sorted in descending order. Your result should look like this:
#Create a query to get the top 5 salaries and display just the employees number from the salaries table. The employee number results should be:
#Try to think of your results as batches, sets, or pages. The first five results are your first page. The five after that would be your second page, etc. Update the previous query to find the tenth page of results. The employee number results should be:

USE employees;

SELECT DISTINCT last_name
FROM employees
ORDER BY last_name DESC
LIMIT 10;

SELECT emp_no
FROM salaries
ORDER BY salary DESC
LIMIT 5 OFFSET 45;

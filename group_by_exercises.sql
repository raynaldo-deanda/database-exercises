USE employees;


SELECT DISTINCT title
FROM titles;

SELECT last_name From employees where last_name LIKE 'E%' OR last_name LIKE '%e' group by last_name;

SELECT DISTINCT first_name, last_name From employees where last_name LIKE 'E%' OR last_name LIKE '%e';

SELECT last_name FROM employees
WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%' group by last_name;

SELECT count(last_name), last_name FROM employees
WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%' group by last_name;


SELECT count(gender) , gender FROM employees
WHERE (first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya')
group by gender;
# Find your query for employees whose last names start and end with 'E'.
# Update the query to find just the unique last names that start and end with 'E' using GROUP BY.
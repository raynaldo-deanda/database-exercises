USE employees;

SELECT CONCAT(last_name, ', ', first_name) AS FULL_NAME
FROM employees
         LIMIT 10;

SELECT CONCAT(last_name, ', ', first_name) AS FULL_NAME,
       birth_date AS 'DOB'
FROM employees
         LIMIT 10;

SELECT CONCAT(emp_no , ' - ' ,last_name, ', ', first_name) AS FULL_NAME,
       birth_date AS 'DOB'
FROM employees
ORDER BY emp_no
    LIMIT 10;
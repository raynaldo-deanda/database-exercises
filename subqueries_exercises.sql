USE employees;


# 1 Find all the employees with the same hire date as employee 101010 using a subquery.
SELECT first_name, last_name, hire_date FROM employees
         WHERE hire_date IN(
             SELECT hire_date
             FROM employees
             WHERE emp_no = 101010
             );

# 2 Find all the titles held by all employees with the first name Aamod.

SELECT title FROM titles
         WHERE emp_no IN (
        SELECT emp_no
        FROM employees
        WHERE first_name = 'Aamod'

    );

# 3 Find all the current department managers that are female.

SELECT first_name, last_name
FROM employees
WHERE emp_no IN (
    SELECT emp_no
    FROM dept_manager
    WHERE to_date = '9999-01-01') AND gender = 'F';


#Bonus
SELECT dept_name FROM departments
WHERE dept_no IN (
    SELECT dept_no
    FROM dept_manager
    WHERE emp_no in (
        SELECT emp_no FROM employees
        WHERE gender = 'F')
      AND to_date ='9999-01-10'
);

SELECT first_name, last_name FROM employees
WHERE emp_no in (
    SELECT emp_no
    FROM salaries
    WHERE salary in (SELECT MAX(salary) FROM salaries)
);
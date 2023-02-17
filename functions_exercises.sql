USE employees;


-- PART I
  -- Find all employees with first names 'Irena', 'Vidya', or 'Maya' — 709 rows (Hint: Use IN).
SELECT * FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya') ORDER BY last_name, first_name;

-- Find all employees whose last name starts with 'E' — 7,330 rows.
SELECT * FROM employees
WHERE last_name LIKE 'E%' ORDER BY emp_no ASC ;

-- Find all employees with a 'q' in their last name
SELECT * FROM employees
WHERE last_name LIKE '%q%';

-- Update your query for 'Irena', 'Vidya', or 'Maya' to use OR instead of IN — 709 rows.
SELECT * FROM employees
WHERE first_name ;




-- PART II
-- Find all employees with first names 'Irena', 'Vidya', or 'Maya'
-- USE employees;
SELECT * FROM employees
WHERE (first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya')
  AND gender = 'M';

-- Find all employees whose last name starts or ends with 'E'
SELECT * FROM employees
WHERE last_name LIKE 'E%' OR last_name LIKE '%e' ORDER BY emp_no ASC;

-- Find all employees whose last name starts and ends with 'E'
# SELECT * FROM employees
                    # WHERE last_name LIKE 'E%E';

SELECT CONCAT(first_name, ' ', last_name) AS full_name
FROM employees
WHERE last_name LIKE 'E%'AND last_name LIKE 'e%';

-- Find all employees with a 'q' in their last name but not 'qu'
SELECT * FROM employees
WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%';

-- Alternative
# WHERE last_name LIKE '%q%' AND last_name != '%qu%';


# Find all employees born on Christmas — 842 rows.
SELECT * FROM employees
WHERE DAYOFMONTH(birth_date) = 25
AND MONTH(birth_date) = 12;


# Find all employees hired in the 90s and born on Christmas — 362 rows.
SELECT * FROM employees
WHERE DAYOFMONTH(birth_date) = 25
  AND MONTH(birth_date) = 12;

# Find all employees hired in the 90s and born on Christmas — 362 rows.
SELECT * FROM employees
WHERE DAYOFMONTH(birth_date) = 25
  AND MONTH(birth_date)
AND YEAR(hire_date) BETWEEN 1990 AND 1999;



# Change the query for employees hired in the 90s and born on Christmas such that the first result is the oldest employee who was hired last. It should be Khun Bernini.

SELECT * FROM employees
WHERE DAYOFMONTH(birth_date) = 25
  AND MONTH(birth_date)
  AND YEAR(hire_date) BETWEEN 1990 AND 1999 ORDER BY birth_date, hire_date DESC;



# For your query of employees born on Christmas and hired in the 90s, use datediff() to find how many days they have been working at the company (Hint: You might also need to use now() or curdate()).

SELECT * ,  DATEDIFF(curdate(), hire_date)
FROM employees
WHERE DAYOFMONTH(birth_date) = 25
  AND MONTH(birth_date)
  AND YEAR(hire_date) BETWEEN 1990 AND 1999 ORDER BY DATEDIFF(CURDATE(), hire_date) DESC ;

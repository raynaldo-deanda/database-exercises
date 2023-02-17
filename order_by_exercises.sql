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
SELECT * FROM employees
WHERE last_name LIKE 'E%E';

-- Find all employees with a 'q' in their last name but not 'qu'
SELECT * FROM employees
WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%';

-- Alternative
# WHERE last_name LIKE '%q%' AND last_name != '%qu%';

use employees;

-- All females receive a 15% raise to their current salary    
UPDATE salaries AS s
    INNER JOIN employees AS e
		ON e.emp_no = s.emp_no
	SET ericas_female_raise = salary * 1.15
	WHERE gender = "F";
    
SELECT first_name, last_name, gender, salary, ericas_female_raise
	FROM employees AS e
    INNER JOIN salaries AS s
		ON e.emp_no = s.emp_no
	WHERE to_date = "9999-01-01";
    




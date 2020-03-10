use employees;

ALTER TABLE salaries
	ADD COLUMN female_raise INT(6) 
    AFTER salary;
    
UPDATE salaries AS s
    INNER JOIN employees AS e
		ON e.emp_no = s.emp_no
	SET female_raise = salary * 1.15
	WHERE gender = "F";
    
SELECT first_name, last_name, gender, salary, female_raise
	FROM employees AS e
    INNER JOIN salaries AS s
		ON e.emp_no = s.emp_no
	WHERE to_date = "1999-01-01"
	ORDER BY gender DESC;
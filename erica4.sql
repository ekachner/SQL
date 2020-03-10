use employees;

-- All female developers receive a 15% raise to their current salary    

-- ALTER TABLE `salaries`
-- 	CHANGE COLUMN `ek_female_developer_raise` `EK_female_developer_raise` INT(6);
	

-- UPDATE salaries AS s
--     INNER JOIN employees AS e
-- 		ON e.emp_no = s.emp_no
-- 	INNER JOIN dept_emp AS demp
-- 		ON demp.emp_no = e.emp_no
-- 	INNER JOIN departments AS d
-- 		ON d.dept_no = demp.dept_no
-- 	SET EK_female_developer_raise = salary * 1.15
-- 	WHERE gender = "F" AND dept_name = "Development" AND s.to_date = "9999-01-01";
    
SELECT first_name, last_name, gender, salary, EK_female_developer_raise, dept_name
	FROM employees AS e
    INNER JOIN salaries AS s
		ON e.emp_no = s.emp_no
	INNER JOIN dept_emp AS demp
		ON demp.emp_no = e.emp_no
	INNER JOIN departments AS d
		ON d.dept_no = demp.dept_no
	WHERE dept_name = "Development" AND s.to_date = "9999-01-01" AND demp.to_date = "9999-01-01"
    ORDER BY dept_name;




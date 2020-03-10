
use employees;

-- 1. Fire everyone in sales that currently makes more than 70K

-- ALTER TABLE salaries
-- 	ADD COLUMN ek_to_date DATE;
    
-- ALTER TABLE salaries
-- 	DROP ek_to_date;


-- UPDATE salaries AS s
-- INNER JOIN dept_emp AS demp
-- 	ON s.emp_no = demp.emp_no
-- INNER JOIN departments AS d
-- 	ON demp.dept_no = d.dept_no
-- SET EK_to_date = CURRENT_DATE()
-- WHERE s.to_date = "9999-01-01" AND salary > 70000 AND dept_name = "Sales";

-- ALTER TABLE `salaries`
-- 	CHANGE COLUMN `ek_to_date` `EK_to_date` date;


SELECT *
FROM salaries AS s
INNER JOIN dept_emp AS demp
	ON s.emp_no = demp.emp_no
INNER JOIN departments AS d
	ON demp.dept_no = d.dept_no
WHERE dept_name = "Sales" AND s.to_date = "9999-01-01" AND demp.to_date = "9999-01-01";



-- 2. Hire your cousin in sales and pay them $40k

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



-- 2. Hire your cousin in sales and pay them $40k  (I hired myself instead)

-- INSERT INTO employees (emp_no, birth_date, first_name, last_name, gender, hire_date)
-- 	VALUES('44777777744', '1986-10-02', 'Erica', 'Kachner', 'F', CURRENT_DATE());

-- INSERT INTO dept_emp (emp_no, dept_no, from_date, to_date)
-- 	VALUES('2147483647', 'd007', '2020-03-10', '9999-01-01');
--     
-- INSERT INTO salaries (emp_no, salary, from_date, to_date)
-- 	VALUES('2147483647', '40000', '2020-03-10', '9999-01-01');
--     
-- INSERT INTO titles (emp_no, title, from_date, to_date)
-- 	VALUES('2147483647', 'Staff', '2020-03-10', '9999-01-01');


-- DESCRIBE departments;


-- SELECT *
-- 	FROM employees
--     WHERE first_name = 'Erica';


SELECT CONCAT(e.first_name, ' ', e.last_name), gender, dept_name, salary, demp.from_date, demp.to_date
	FROM employees AS e
	INNER JOIN salaries AS s
		ON e.emp_no = s.emp_no
	INNER JOIN dept_emp AS demp
		ON s.emp_no = demp.emp_no
	INNER JOIN departments AS d
		ON demp.dept_no = d.dept_no
	WHERE dept_name = "Sales" AND gender = "F" AND salary < 50000
    GROUP BY CONCAT(e.first_name, ' ', e.last_name);
    













USE employees;

-- Challenge 1: unique First name + last name, in one column, of all department managers who have ever made more than $100,000  ---> look at the keyword distinct.
SELECT DISTINCT CONCAT(e.first_name,' ', e.last_name) AS name, dept_name AS department, title, salary
	FROM employees AS e
	INNER JOIN titles AS t
		ON e.emp_no = t.emp_no
	INNER JOIN salaries AS s
		ON t.emp_no = s.emp_no
	INNER JOIN dept_manager AS dman
		ON s.emp_no = dman.emp_no
	INNER JOIN departments AS d
		ON dman.dept_no = d.dept_no
	WHERE salary > 100000
    GROUP BY CONCAT(e.first_name,' ', e.last_name);



-- Challenge 2: Last title held for every employee with the last name Aamodt
SELECT CONCAT(e.first_name,' ', e.last_name) AS name, title, to_date AS "employeed till", e.emp_no AS id
	FROM employees AS e
	INNER JOIN titles AS t
		ON e.emp_no = t.emp_no
	WHERE last_name = "Aamodt"
    GROUP BY e.emp_no
    ORDER BY t.to_date DESC;



-- Challenge 3: All employees who have been direct reports AND managers
SELECT CONCAT(e.first_name,' ', e.last_name) AS name, CONCAT(demp.from_date,' ', demp.to_date) AS "employee workdates", CONCAT(dman.from_date,' ', dman.to_date) AS "manager workdates"
	FROM employees AS e
	INNER JOIN dept_manager AS dman
		ON e.emp_no = dman.emp_no
	INNER JOIN dept_emp AS demp
		ON dman.emp_no = demp.emp_no
	WHERE dman.emp_no = demp.emp_no
    GROUP BY CONCAT(e.first_name,' ', e.last_name);
	


-- Challenge 4:  "Current" manager of every department, their current salaries, their title, and their age.
SELECT CONCAT(e.first_name,' ', e.last_name) AS name, title, dept_name AS department, salary, YEAR(NOW()) - YEAR(birth_date) AS age
	FROM employees AS e
	INNER JOIN titles AS t
		ON e.emp_no = t.emp_no
	INNER JOIN salaries AS s
		ON t.emp_no = s.emp_no
	INNER JOIN dept_manager AS dman
		ON s.emp_no = dman.emp_no
	INNER JOIN departments AS d
		ON dman.dept_no = d.dept_no
	WHERE title = "Manager" AND s.to_date = "9999-01-01" AND dman.to_date = "9999-01-01"
    GROUP BY CONCAT(e.first_name,' ', e.last_name);









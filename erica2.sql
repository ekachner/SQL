USE employees;

-- Average employee salary for the year 2000 by gender
SELECT gender, AVG(salary)
	FROM employees AS e
    INNER JOIN salaries AS s
		ON e.emp_no = s.emp_no
    WHERE YEAR(from_date) = 2000 AND YEAR(to_date) = 2000
	GROUP BY gender;
    
-- Average salary in 2000 by department
SELECT d.dept_name, AVG(s.salary)
	FROM departments AS d
    INNER JOIN dept_emp AS de
		ON d.dept_no = de.dept_no
	INNER JOIN salaries AS s
		ON de.emp_no = s.emp_no
	WHERE YEAR(de.from_date) = 2000 AND YEAR(de.to_date) = 2000
    GROUP BY d.dept_name;
    
    
-- Average salary in 2000 by gender by department    
SELECT d.dept_name, e.gender, AVG(s.salary)
	FROM dept_emp AS de
	INNER JOIN salaries AS s
		ON de.emp_no = s.emp_no
	INNER JOIN departments AS d
		ON de.dept_no = d.dept_no
	INNER JOIN employees AS e
		ON de.emp_no = e.emp_no
	WHERE YEAR(s.from_date) = 2000 AND YEAR(s.to_date) = 2000
    GROUP BY d.dept_name
    ORDER BY e.gender;
   
        
        

USE employees;

-- Average age of employees   
SELECT YEAR(NOW()) - AVG(YEAR(birth_date))
	FROM employees;

-- Ratio of men vs. women    
SELECT gender, Count(*)
	FROM employees
    GROUP BY gender;
 
-- List of employees under 30
SELECT *
	FROM employees
    WHERE  YEAR(NOW()) - YEAR(birth_date) < 30
    ORDER BY gender;
    
	
    
    
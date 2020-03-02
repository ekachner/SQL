USE employees;
    
SELECT YEAR(NOW()) - AVG(YEAR(birth_date))
	FROM employees;
    
SELECT gender, Count(*)
	FROM employees
    GROUP BY gender;
    
SELECT *
	FROM employees
    WHERE  YEAR(NOW()) - YEAR(birth_date) < 30
    ORDER BY gender;
    
	
    
    
USE erica_db;

INSERT INTO students(fname, minitial, lname, phone, email)
	VALUES(
		'Erica',
        'J',
        'Kachner',
        '307-214-1496',
        'erifa@gmail.com'
    );
    
SELECT * FROM erica_db.students;

INSERT INTO students (fname, minitial, lname, phone, email)
	VALUES('Shane', 'P', 'Dominguez', '307-876-1764', 'allo@gmail.com'),
	('Tyler', 'Q', 'Montigue', '307-846-1764', 'wallo@gmail.com'),
    ('Zac', 'R', 'Moffat', '307-876-1714', 'marshanmallo@gmail.com'),
    ('Bread', 'S', 'Parish', '307-287-7523', 'potatoman@haiku.com');


  DELETE
	FROM erica_db.students
    WHERE student_id = 10;
   
    
 INSERT INTO erica_db.students (fname, minitial, lname, phone, email)
	VALUES('Kelly', 'A', 'Anderson', '', 'cowlady@moo.com'),
    ('Reegan', 'M', 'Ford', '', 'dogma@woof.com');
    
  USE jason_db;

INSERT INTO students (fname, mitnitial, lname, phone, email)
    VALUES('Bread', 'J', 'Owers', '307-287-7523', 'potatoman@haiku.com');
    
    
SELECT * 
	FROM jason_db.students;


—————————————————————————————————————————


DELETE
	FROM students
    WHERE student_id IN('2', '3', '4');
    
DELETE 
	FROM students
    WHERE student_id = 5;
    
DESCRIBE students;


—————————————————————————————————————————

ALTER TABLE students
	ADD COLUMN email VARCHAR(40); 


ALTER TABLE students
	MODIFY COLUMN email VARCHAR(40) NOT NULL; 


DESCRIBE students;


INSERT INTO students (fname, minitial, lname, phone, email)
	VALUES('Shane', 'P', 'Dominguez', '307-876-1764', 'allo@gmail.com'),
	('Tyler', 'Q', 'Montigue', '307-846-1764', 'wallo@gmail.com'),
    	('Zac', 'R', 'Moffat', '307-876-1714', 'marshanmallo@gmail.com'),
   	('Bread', 'S', 'Parish', '307-287-7523', 'potatoman@haiku.com');


DELETE
	FROM erica_db.students
    	WHERE student_id IN('2', '3', '4');  
        
—————————————————————————————————————————
    
UPDATE table
	SET column = expression [, column = expression]
	[WHERE search_condition];



UPDATE emp_sales
	SET sales = sales + 10;					<— BAD   (this will change the value to “sales + 10” for EVERY “sales” column)

UPDATE emp_sales
	SET sales = sales + 10
	WHERE emp_id = ‘E09’;					<— GOOD 


—————————————————————————————————————————

UPDATE aspiring_authors 
	SET au_fname = 'Erica',
		au_lname = 'Kachner'
	WHERE au_id = 'E3';
 
—————————————————————————————————————————
  
DELETE
	FROM aspiring_authors
    WHERE au_id = 'E11';
    
    
    
    
-- ALTER TABLE salaries
-- 	DROP COLUMN female_raise;

-- ALTER TABLE `salaries`
-- 	CHANGE COLUMN `erica_female_raise` `ericas_female_raise` INT(6);
    
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
    
DELETE
	FROM students
    WHERE student_id IN('2', '3', '4');
    
DELETE 
	FROM students
    WHERE student_id = 5;
    
DESCRIBE students;  
    
    
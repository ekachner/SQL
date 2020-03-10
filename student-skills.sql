USE erica_db;

CREATE TABLE students
	(
	student_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    fname VARCHAR(40) NOT NULL,
    minitial CHAR(1) DEFAULT ' ',
    lname VARCHAR(40) NOT NULL,
    CONSTRAINT students_pk
		PRIMARY KEY(student_id)
    );




CREATE TABLE skills
(
skill_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
skill_name VARCHAR(20),
skill_icon BLOB,
CONSTRAINT skills
	PRIMARY KEY (skill_id)
);




CREATE TABLE students_skills
(
student_id INT UNSIGNED NOT NULL,
skill_id INT UNSIGNED NOT NULL,
CONSTRAINT students_skills_pk
	PRIMARY KEY (student_id, skill_id),
CONSTRAINT students_skills_fk1
	FOREIGN KEY (student_id)
		REFERENCES students(student_id),
CONSTRAINT students_skills_fk2
	FOREIGN KEY (skill_id)
		REFERENCES skills(skill_id)
);
    
    


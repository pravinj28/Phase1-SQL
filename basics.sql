
DROP TABLE students2; --This is used to delete the table in the database

ALTER TABLE students1 ADD gpa DECIMAL(3, 2); -- Used to alter the table

ALTER TABLE students1 DROP COLUMN gpa;

INSERT INTO students1 VALUES (
     1, 'Jack', 'Biology');



INSERT INTO students1 VALUES (
     2, 'Kate', 'Sociology'
);

SELECT * FROM students1;

INSERT INTO students1 (student_id, name, major) VALUES(2, 'Claire','English' );



DROP TABLE students1;

CREATE TABLE students ( -- this is used to create a table
    student_id INT PRIMARY KEY,
    name VARCHAR(200),
    major VARCHAR(200)
);

INSERT INTO students (student_id, name, major) 
VALUES 
(1, 'Jack', 'Biology'),
(2, 'Kate', 'Sociology'),
(3, 'Claire', 'English'),
(4, 'Mike', 'Computer Science');

SELECT * FROM students;

DROP TABLE students; --Used to delete the table

CREATE TABLE student (
     student_id INT,
     name VARCHAR(20) NOT NULL, --NO NULL Means it cannot be empty 
     major VARCHAR(20) UNIQUE,  -- UNIQUE means it should be unique for all same entries will be rejected
     PRIMARY KEY(student_id)
);

INSERT INTO student (student_id, name, major) 
VALUES 
(1, 'Jack', 'Biology'),
(2, 'Kate', 'Sociology'),
(3, 'Claire' ,'Chemistry'),
(4, 'Mike', 'Comp');

SELECT * FROM student;

CREATE TABLE student1 (
     student_id INT,
     name VARCHAR(20) NOT NULL, --NO NULL Means it cannot be empty 
     major VARCHAR(20) DEFAULT 'undecided', --If the major field is left null then it is undecided
     PRIMARY KEY(student_id)
);

INSERT INTO student1 (student_id, name, major) 
VALUES 
(1, 'Jack', 'Biology'),
(2, 'Kate', 'Sociology'),
(3, 'Claire' ,'Chemistry'),
(4, 'Mike', NULL);

INSERT INTO student1 VALUES (6, 'Kat', DEFAULT);

SELECT * FROM student1;

CREATE TABLE student2 (
     student_id INT GENERATED ALWAYS AS IDENTITY, --The data that gets inserted into here is gonna get automatically incremented everytime we add one.
     name VARCHAR(20) NOT NULL, --NO NULL Means it cannot be empty 
     major VARCHAR(20) DEFAULT 'undecided', --If the major field is left null then it is undecided
     PRIMARY KEY(student_id)
);

INSERT INTO student2 (name, major) 
VALUES 
('Jack', 'Biology'),
('Kate', 'Sociology'),
('Claire' ,'Chemistry'),
('Mike', 'Comp Sci');

SELECT * FROM student2;

UPDATE student2 SET major = 'Bio' WHERE student_id = 1;

UPDATE student2 SET major = 'Physics' WHERE student_id = 3;

UPDATE student2 SET major = 'Biochemistry' WHERE major = 'Bio' OR major = 'Physics';

DELETE FROM student2 
WHERE student_id = 3;


CREATE TABLE person (
     id INT PRIMARY KEY,
     first_name VARCHAR(20),
     last_name VARCHAR(20),
     date_of_birth DATE,
     email VARCHAR(20)
);

ALTER TABLE person ADD gender VARCHAR(20);


INSERT INTO person VALUES (
     1, 'Anne', 'Smith', '1998-01-08', 'anne@gmail.com', 'Female'
);

SELECT * FROM person;

INSERT INTO person VALUES (
     2, 'Jake', 'Jones', '1990-01-10', 'jake@gmail.com', 'Male'
);


SELECT first_name, last_name FROM person;

SELECT email FROM person;

SELECT * FROM person ORDER BY last_name ACS;





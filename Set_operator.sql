DROP TABLE IF EXISTS students_2025;
CREATE TABLE students_2025(
	student_id INT PRIMARY KEY,
	student_name VARCHAR(100),
	course VARCHAR(50)
);

INSERT INTO students_2025(student_id, student_name, course) VALUES
(1,'Arnav Sharma','Computer Science'),
(2,'Ishita Varma','Mechanical Engineering'),
(3,'Pratiksha Ghadage','Electronics'),
(4,'Ananya Desai','Civi; Engineering'),
(5,'Rahul Gupta','Computer science');

SELECT * FROM students_2025

DROP TABLE IF EXISTS students_2026;
CREATE TABLE students_2026(
	student_id INT PRIMARY KEY,
	student_name VARCHAR(100),
	course VARCHAR(50)
);

INSERT INTO students_2026(student_id, student_name, course) VALUES
(3,'Arnav Sharma','Computer Science'),
(4,'Ishita Varma','Mechanical Engineering'),
(6,'Divya Garud','Computer science'),
(7,'Shweta More','Mathematics'),
(8,'Nikita Karande','Physics');

SELECT * FROM students_2026;

--UNION--Combines resuLts, removes duplicates
SELECT student_name, course FROM students_2025
UNION
SELECT student_name, course
FROM students_2026;

--UNION ALL -- combines results, keep duplicates
SELECT student_name, course FROM students_2025
UNION ALL
SELECT student_name, course
FROM students_2026;


--INTERSECT - Returns common results in both tables

SELECT student_name, course FROM students_2025
INTERSECT
SELECT student_name, course
FROM students_2026;

/* Question 1: Consider three tables: "Students", "Courses", and "Enrollments". The "Enrollments" table contains the enrollment information of students in courses with foreign keys referencing "Students" and "Courses" tables. Write an SQL query to retrieve the names of all students along with the names of the courses they are enrolled in*/

USE db_trials;

--student table

CREATE TABLE tbl_students(

std_id INT NOT NULL PRIMARY KEY IDENTITY, 
std_name VARCHAR (50),
batchCode VARCHAR (40)
);

-- course table

CREATE TABLE tbl_courses(
course_id INT PRIMARY KEY IDENTITY (101,1),
courseName VARCHAR (60)
);

--enrolement table

CREATE TABLE enrolled_std(
enr_id INT NOT NULL PRIMARY KEY IDENTITY,
std_id INT  FOREIGN KEY REFERENCES tbl_students(std_id),
course_id INT FOREIGN KEY REFERENCES tbl_courses(course_id)
);

--inserting in tbl_student

INSERT INTO tbl_students(std_name,batchCode) VALUES 
('Hashir','PR-2024'),
('Hammad','PR-2024'),
('Qaeed','PR-2023'),
('Ehsan','PR-2024'),
('Hassaan','PR-2022'),
('Mustafa','PR-2024'),
('Arsal','PR-2024');

SELECT * FROM tbl_students;
SELECT * FROM tbl_courses;
SELECT * FROM enrolled_std;

DROP TABLE tbl_students;
DROP TABLE tbl_courses;
DROP TABLE enrolled_std;


--inserting in tbl_courses

INSERT INTO tbl_courses(courseName) VALUES 
('CPISM'),
('DISM'),
('HDSE'),
('ADSE'),
('ACCP');

INSERT INTO enrolled_std (std_id,course_id) VALUES (6,104);



SELECT enrolled_std.enr_id, 

tbl_students.std_name,
tbl_students.batchCode,
tbl_courses.courseName
FROM
enrolled_std
JOIN 
tbl_students ON enrolled_std.std_id = tbl_students.std_id
JOIN 
tbl_courses ON enrolled_std.course_id = tbl_courses.course_id;
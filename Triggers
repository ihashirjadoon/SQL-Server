CREATE DATABASE db_learn_sql;

DROP TABLE tbl_student;


CREATE TABLE tbl_student(
id INT PRIMARY KEY IDENTITY,
studentName VARCHAR (50),
email VARCHAR (60),
program VARCHAR (50)

);

CREATE TABLE student_log(
id INT PRIMARY KEY IDENTITY,
name VARCHAR (50),
status VARCHAR (60)
);

--INSERT TRIGGER

CREATE TRIGGER insert_student_name ON tbl_student 
AFTER INSERT 
AS 
BEGIN 
    SET NOCOUNT ON 
    DECLARE @studentName VARCHAR(MAX)

    SELECT @studentName = inserted.studentName FROM INSERTED 

    INSERT INTO student_log (name, status) VALUES (@studentName, 'INSERTED')
END;

--TRIGGER END

DROP TRIGGER insert_student_name;

INSERT INTO tbl_student
(studentName,email,program)
VALUES
('Hashir','hashir@gmail.com','BS CYBERSECURITY'),
('Hammad','hammad@gmail.com','BS CS'),
('Muhammad','muhammad@gmail.com','PHARM-D'),
('Ali', 'ali@gmail.com', 'MS Data Science'),
('Sara', 'sara@gmail.com', 'BS Electrical Engineering'),
('Ahmed', 'ahmed@gmail.com', 'BS Computer Engineering'),
('Aisha', 'aisha@gmail.com', 'MS Artificial Intelligence'),
('Khalid', 'khalid@gmail.com', 'PhD Computer Science');

SELECT * FROM student_log;

SELECT * FROM tbl_student;


--DELETE TRIGGER

CREATE TRIGGER delete_student_name ON tbl_student 
AFTER DELETE
AS 
BEGIN 
    SET NOCOUNT ON 
    DECLARE @studentName VARCHAR(MAX)

    SELECT @studentName = deleted.studentName FROM DELETED 

    INSERT INTO student_log (name, status) VALUES (@studentName, 'DELETED')
END;

--TRIGGER END

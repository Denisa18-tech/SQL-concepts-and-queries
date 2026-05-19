CREATE TABLE student (
  id integer,
  name varchar(50),
  age integer,
  course varchar(50)
);

insert into student (id, name, age, course) 
values (1,'john', 20, 'computer science');

alter table student add email varchar(50);

select * from student;

INSERT INTO Student (id, name, age, course, Email)
VALUES (2, 'krisha', 20, 'Civil', 'krisha@gmail.com');
INSERT INTO Student (id, name, age, course, Email)
VALUES (3, 'jay', 23, 'Computer', 'jay789@gmail.com');
INSERT INTO Student (id, name, age, course, Email)
VALUES (4, 'komal', 21, 'mechanical engineering', 'komal8129@gmail.com');
INSERT INTO Student (id, name, age, course, Email)
VALUES (5, 'prince', 20, 'mechanical engineering', 'prince3107@gmail.com');

delete from student where name = 'komal';

update student set age = 22 where name = 'jay';

SELECT Course, COUNT(*)
FROM Student
GROUP BY Course;

SELECT Course, COUNT(*)
FROM Student
GROUP BY Course
HAVING COUNT(*) > 0;

SELECT * FROM Student
offset 2;

select * from course;

SELECT * FROM student INNER JOIN course ON student.course = course.course_name;

select * from student Left Join course ON LOWER(student.course) = LOWER(course.course_name);

select * from student Right Join course ON LOWER(student.course) = LOWER(course.course_name);

select * from student full Join course ON LOWER(student.course) = LOWER(course.course_name);

select * from student cross join course;

SELECT * FROM student INNER JOIN course ON (student.ID) = (course.ID);

SELECT * FROM student LEFT JOIN course ON (student.ID) = (course.ID);

SELECT * FROM student RIGHT JOIN course ON (student.ID) = (course.ID);

SELECT * FROM student FULL JOIN course ON (student.ID) = (course.ID);

SELECT *
FROM student
WHERE id =
(
    SELECT id
    FROM course
    WHERE course_name = 'Computer'
);


CREATE VIEW student_course_view AS
SELECT name, age, course
FROM student;


SELECT * FROM student_course_view;

CREATE INDEX idx_student_name
ON student(name);


SELECT * FROM student
WHERE age >= 21;


EXPLAIN
SELECT * FROM student
WHERE name = 'jay';

CREATE INDEX idx_student_name
ON student(name);

EXPLAIN ANALYZE
SELECT * FROM student
WHERE name = 'jay';


CREATE EXTENSION pg_stat_statements;


SELECT query, calls, total_exec_time
FROM pg_stat_statements
ORDER BY total_exec_time DESC;


CREATE PROCEDURE add_student(
    p_id INT,
    p_name VARCHAR,
    p_age INT,
    p_course VARCHAR,
    p_email VARCHAR
)
LANGUAGE plpgsql
AS $$
BEGIN
    INSERT INTO student(id, name, age, course, email)
    VALUES (p_id, p_name, p_age, p_course, p_email);
END;
$$;
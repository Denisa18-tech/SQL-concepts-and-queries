
CREATE TABLE course (
  id integer,
  name varchar(50),
  course_name varchar(50)
);

select * from course;

insert into course (id, name, course_name) 
values (1,'john', 'computer science');
insert into course (id, name, course_name) 
values (2,'om', 'Computer');
insert into course (id, name, course_name) 
values (3,'zeel', 'Civil');
insert into course (id, name, course_name) 
values (4,'denisa', 'mechanical engineering');
insert into course (id, name, course_name) 
values (10,'asha', 'Civil');

SELECT * FROM student INNER JOIN course ON (student.ID) = (course.ID);
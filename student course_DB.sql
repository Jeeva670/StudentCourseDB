create database student_course;
use student_course;
create table student(
student_ID int auto_increment primary key,
Name varchar(50),
Email varchar(50));



create table course(
course_ID int auto_increment primary key,
course_name varchar(50),
course_description varchar(255));


create table enrolment(
enrolment_ID int auto_increment primary key,
student_ID INT,
course_ID INT,
enrolment_date DATE,
foreign key(student_ID) references student(student_ID),
foreign key (course_ID) references course(course_ID));


insert into Student (student_name,Email) values
('Arun Kumar', 'arun.kumar@example.com'),
('Priya Sharma', 'priya.sharma@example.com'),
('Ravi Raj', 'ravi.raj@example.com'),
('Sneha Reddy', 'sneha.reddy@example.com'),
('Vikram Singh', 'vikram.singh@example.com'),
('Meena Nair', 'meena.nair@example.com'),
('Karthik Iyer', 'karthik.iyer@example.com'),
('Ananya Das', 'ananya.das@example.com'),
('Rahul Verma', 'rahul.verma@example.com'),
('Divya Gupta', 'divya.gupta@example.com');


insert into course (course_name,course_description)values
('Database Systems', 'Learn SQL and database design fundamentals'),
('Python Programming', 'Introduction to Python and its core concepts'),
('Web Development', 'Front-end and back-end web development'),
('Data Science', 'Learn data analysis, visualization, and ML basics'),
('Computer Networks', 'Understand networking concepts and protocols'),
('Cyber Security', 'Introduction to system and network security'),
('AI Fundamentals', 'Basics of Artificial Intelligence'),
('Cloud Computing', 'Learn cloud technologies and architecture'),
('Software Engineering', 'Principles of software development lifecycle'),
('Operating Systems', 'Understand OS concepts and process management');


insert into Enrolment (student_ID, course_ID, enrolment_date) values
(1, 1, '2025-06-01'),
(2, 2, '2025-06-03'),
(3, 4, '2025-06-05'),
(4, 3, '2025-06-07'),
(5, 5, '2025-06-10'),
(6, 2, '2025-06-12'),
(7, 7, '2025-06-15'),
(8, 9, '2025-06-18'),
(9, 8, '2025-06-20'),
(10, 6, '2025-06-22');


select*from student;
select*from course;
select*from enrolment;


select 
    s.student_name as Student_Name,
    c.course_name as Course_Name
from enrolment e
inner join student s on e.student_ID = s.student_ID
inner join course c on e.course_ID = c.course_ID;


select 
    c.course_ID,
    c.course_name,
    COUNT(e.student_ID) as Enrolled_Students
from course c
left join enrolment e on c.course_ID = e.course_ID
group by c.course_ID, c.course_name
order by c.course_ID;


select 
    student_ID,
    count(course_ID) as Number_of_Courses
from enrolment
group by student_ID
having count(course_ID) > 1;

select 
    c.course_ID,
    c.course_name,
    c.course_description
from course c
left join enrolment e on c.course_ID = e.course_ID
where e.enrolment_ID is null;












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
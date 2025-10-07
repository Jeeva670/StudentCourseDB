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

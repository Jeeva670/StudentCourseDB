# Student Course Management SQL Project

## Overview
This project demonstrates a relational database for managing students, courses, and enrolments.  
It uses SQL to create tables, insert sample data, and perform queries to analyze relationships between tables.

## Objectives
- Analyze relationships between Students, Courses, and Enrolments.  
- Use SQL joins (INNER, LEFT) and filtering techniques to extract insights.  
- Identify top performers, course enrollments, and student counts.  
- Demonstrate practical usage of aggregate functions and GROUP BY clauses.

## Database Structure
### Tables:
1. **Students**: Stores student information (`student_ID`, `Name`, `Email`).  
2. **Courses**: Stores course information (`course_ID`, `course_name`, `course_description`).  
3. **Enrolments**: Links students to courses (`enrolment_ID`, `student_ID`, `course_ID`, `enrolment_date`).

### Relationships:
- Each student can enrol in multiple courses.  
- Each course can have multiple students.  
- `Enrolments` table connects students and courses using foreign keys.

## Files
- `create_database.sql` → Creates the database and tables.  
- `insert_data.sql` → Inserts sample data into tables.  
- `queries.sql` → Contains SQL queries to analyze data (joins, aggregates, filters).  

## Sample Queries
- List all students with their enrolled courses.  
- Count number of students per course.  
- Find top-performing students based on total scores.  
- Identify courses with no enrolments.  

## How to Use
1. Clone or download the repository.  
2. Run `create_database.sql` to create the database and tables.  
3. Run `insert_data.sql` to populate tables with sample data.  
4. Run `queries.sql` to explore insights and reports.

## License
This project is open-source and free to use for educational purposes.

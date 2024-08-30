CREATE DATABASE IF NOT EXISTS student_management;
USE student_management;

CREATE TABLE students (
    std_id INT PRIMARY KEY,
    student_group VARCHAR(50),
    subject VARCHAR(100) NOT NULL,
    mid_term_marks DECIMAL(5, 2),
    final_term_marks DECIMAL(5, 2)
);

INSERT INTO students (std_id, student_group, subject, mid_term_marks, final_term_marks)
VALUES (1, 'Group A', 'Mathematics', 85.5, 90.0),
       (2, 'Group B', 'Physics', 78.0, 82.5),
       (3, 'Group A', 'Chemistry', 88.0, 87.0);
       
Select * from students;

INSERT INTO students (std_id, student_group, 
subject, mid_term_marks, final_term_marks)
VALUES  (4, 'Group A', 'Biology', 87.0, 84.0);
INSERT INTO students (std_id, student_group, 
subject, mid_term_marks, final_term_marks)
VALUES  (5, 'Group B', 'Electronics', 85.0, 83.0);

SELECT std_id
FROM students
WHERE student_group = 'eng'
AND subject = 'Physics'
AND final_term_marks > 20;

SELECT student_group, AVG(final_term_marks) AS avg_final_marks
FROM students
GROUP BY student_group;

SELECT student_group, AVG(final_term_marks) AS avg_final_marks
FROM students
GROUP BY student_group
HAVING AVG(final_term_marks) > 85;

SELECT AVG(final_term_marks) AS avg_final_marks
FROM students;

SELECT COUNT(*) AS num_students
FROM students;

SELECT MAX(mid_term_marks) AS max_midterm_marks
FROM students;

CREATE VIEW student_details AS
SELECT std_id, student_group, 
subject, mid_term_marks, final_term_marks
FROM students;

 SELECT 
    empid, 
    name, 
    salary, 
    salary * 1.50 AS incremented_salary
FROM 
    employees
ORDER BY 
    incremented_salary;  

create database AdharNo;
Use AdharNo;
CREATE TABLE AdharNo(Stds_id int,Location Varchar(20),Adhar_no int);
insert into AdharNo values(1,"pune",12345),(2,"mumbai",23456),(3,"Puri",45678);
Select * from AdharNo;

Select Std_id From Students

CREATE DATABASE SQL01;
USE SQL01;

CREATE TABLE Devotees(
Id INT PRIMARY KEY AUTO_INCREMENT,
Devotees_Name VARCHAR(100) NOT NULL,
Event_Date DATE NOT NULL,
Location VARCHAR(100) NOT NULL,
Organizer VARCHAR(100),
Max_Participants INT,
Registration_Fees Decimal(10,2),
Description Text
);
SELECT * FROM Devotees;








 


























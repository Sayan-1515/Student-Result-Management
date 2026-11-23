create database student_result_management;
use student_result_management;
SET GLOBAL local_infile = 0;

-- Creating The table
CREATE TABLE classes (
    class_id INT PRIMARY KEY AUTO_INCREMENT,
    class_name VARCHAR(50) NOT NULL,
    section VARCHAR(10) NOT NULL,
    class_teacher VARCHAR(100),

    UNIQUE (class_name, section)
);

CREATE TABLE students (
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    roll_number VARCHAR(20) NOT NULL,
    student_name VARCHAR(100) NOT NULL,
    gender VARCHAR(10),
    dob DATE,
    class_id INT NOT NULL,
    admission_date DATE,

    FOREIGN KEY (class_id)
    REFERENCES classes(class_id)
);

CREATE TABLE subjects (
    subject_id INT PRIMARY KEY AUTO_INCREMENT,
    subject_name VARCHAR(100) NOT NULL UNIQUE,
    max_marks INT DEFAULT 100,

    CHECK (max_marks > 0)
);

CREATE TABLE exams (
    exam_id INT PRIMARY KEY AUTO_INCREMENT,
    exam_name VARCHAR(100) NOT NULL,
    exam_date DATE,
    academic_year VARCHAR(20)
);

CREATE TABLE marks (
    marks_id INT PRIMARY KEY AUTO_INCREMENT,
    student_id INT NOT NULL,
    subject_id INT NOT NULL,
    exam_id INT NOT NULL,
    marks_obtained DECIMAL(5,2) NOT NULL,
    grade VARCHAR(5),

    FOREIGN KEY (student_id)
    REFERENCES students(student_id),

    FOREIGN KEY (subject_id)
    REFERENCES subjects(subject_id),

    FOREIGN KEY (exam_id)
    REFERENCES exams(exam_id),

    UNIQUE (student_id, subject_id, exam_id),
    CHECK (marks_obtained BETWEEN 0 AND 100)
);


-- Input Master Datasets
INSERT INTO classes
(class_name, section, class_teacher)
VALUES
('Class 5', 'A', 'Mr. Sharma'),
('Class 5', 'B', 'Mrs. Roy'),
('Class 6', 'A', 'Mr. Das'),
('Class 6', 'B', 'Mrs. Sen'),
('Class 7', 'A', 'Mr. Kumar'),
('Class 7', 'B', 'Mrs. Paul'),
('Class 8', 'A', 'Mr. Ghosh'),
('Class 8', 'B', 'Mrs. Dutta'),
('Class 9', 'A', 'Mr. Singh'),
('Class 9', 'B', 'Mrs. Bose'),
('Class 10', 'A', 'Mr. Verma'),
('Class 10', 'B', 'Mrs. Das'),
('Class 11', 'A', 'Mr. Mehta'),
('Class 11', 'B', 'Mrs. Gupta'),
('Class 12', 'A', 'Mr. Roy'),
('Class 12', 'B', 'Mrs. Sen');

INSERT INTO students
(roll_number, student_name, gender, dob, class_id, admission_date)
VALUES
-- CLASS 5
('01','Aarav Sharma','Male','2015-02-12',1,'2025-04-01'),
('02','Priya Roy','Female','2015-05-18',1,'2025-04-01'),
('03','Rahul Das','Male','2015-08-21',1,'2025-04-01'),
('04','Sneha Sen','Female','2015-11-10',1,'2025-04-01'),

('01','Arjun Kumar','Male','2015-01-15',2,'2025-04-01'),
('02','Riya Paul','Female','2015-04-22',2,'2025-04-01'),
('03','Amit Ghosh','Male','2015-07-19',2,'2025-04-01'),
('04','Pooja Dutta','Female','2015-10-25',2,'2025-04-01'),

-- CLASS 6
('01','Rohan Singh','Male','2014-03-12',3,'2025-04-01'),
('02','Ananya Bose','Female','2014-06-20',3,'2025-04-01'),
('03','Kabir Verma','Male','2014-09-15',3,'2025-04-01'),
('04','Diya Gupta','Female','2014-12-05',3,'2025-04-01'),

('01','Aryan Mehta','Male','2014-02-11',4,'2025-04-01'),
('02','Meera Patel','Female','2014-05-16',4,'2025-04-01'),
('03','Karan Paul','Male','2014-08-23',4,'2025-04-01'),
('04','Neha Roy','Female','2014-11-14',4,'2025-04-01'),

-- CLASS 7
('01','Vivaan Sharma','Male','2013-01-19',5,'2025-04-01'),
('02','Ishita Das','Female','2013-04-25',5,'2025-04-01'),
('03','Aditya Sen','Male','2013-07-12',5,'2025-04-01'),
('04','Piya Ghosh','Female','2013-10-18',5,'2025-04-01'),

('01','Sayan Paul','Male','2013-02-14',6,'2025-04-01'),
('02','Anika Roy','Female','2013-05-21',6,'2025-04-01'),
('03','Dev Kumar','Male','2013-08-17',6,'2025-04-01'),
('04','Tanya Bose','Female','2013-11-09',6,'2025-04-01'),

-- CLASS 8
('01','Ayan Das','Male','2012-01-22',7,'2025-04-01'),
('02','Moumita Sen','Female','2012-04-16',7,'2025-04-01'),
('03','Soham Roy','Male','2012-07-25',7,'2025-04-01'),
('04','Ritika Paul','Female','2012-10-12',7,'2025-04-01'),

('01','Rishav Ghosh','Male','2012-02-18',8,'2025-04-01'),
('02','Sneha Sharma','Female','2012-05-24',8,'2025-04-01'),
('03','Abhishek Das','Male','2012-08-11',8,'2025-04-01'),
('04','Ira Gupta','Female','2012-11-20',8,'2025-04-01'),

-- CLASS 9
('01','Akash Kumar','Male','2011-01-13',9,'2025-04-01'),
('02','Sanjana Roy','Female','2011-04-19',9,'2025-04-01'),
('03','Rahul Verma','Male','2011-07-23',9,'2025-04-01'),
('04','Nisha Bose','Female','2011-10-15',9,'2025-04-01'),

('01','Pranav Sen','Male','2011-02-17',10,'2025-04-01'),
('02','Kavya Das','Female','2011-05-22',10,'2025-04-01'),
('03','Siddharth Paul','Male','2011-08-14',10,'2025-04-01'),
('04','Aditi Ghosh','Female','2011-11-19',10,'2025-04-01'),

-- CLASS 10
('01','Raj Sharma','Male','2010-01-16',11,'2025-04-01'),
('02','Pallavi Roy','Female','2010-04-21',11,'2025-04-01'),
('03','Manish Das','Male','2010-07-18',11,'2025-04-01'),
('04','Swati Sen','Female','2010-10-24',11,'2025-04-01'),

('01','Ritwik Kumar','Male','2010-02-12',12,'2025-04-01'),
('02','Srishti Paul','Female','2010-05-17',12,'2025-04-01'),
('03','Debjit Ghosh','Male','2010-08-20',12,'2025-04-01'),
('04','Madhuri Dutta','Female','2010-11-11',12,'2025-04-01'),

-- CLASS 11
('01','Sourav Singh','Male','2009-01-14',13,'2025-04-01'),
('02','Nandini Bose','Female','2009-04-20',13,'2025-04-01'),
('03','Abir Verma','Male','2009-07-15',13,'2025-04-01'),
('04','Roshni Gupta','Female','2009-10-22',13,'2025-04-01'),

('01','Kunal Mehta','Male','2009-02-16',14,'2025-04-01'),
('02','Tanisha Patel','Female','2009-05-19',14,'2025-04-01'),
('03','Aman Paul','Male','2009-08-24',14,'2025-04-01'),
('04','Sonia Roy','Female','2009-11-12',14,'2025-04-01'),
-- CLASS 12
('01','Rajat Sharma','Male','2008-03-15',15,'2025-04-01'),
('02','Anushka Das','Female','2008-07-21',15,'2025-04-01'),

('01','Vikram Sen','Male','2008-04-18',16,'2025-04-01'),
('02','Ishani Ghosh','Female','2008-09-23',16,'2025-04-01');

INSERT INTO subjects
(subject_name, max_marks)
VALUES
('Mathematics', 100),
('English', 100),
('Science', 100),
('Social Science', 100),
('Computer Science', 100),
('Hindi', 100);

INSERT INTO exams
(exam_name, exam_date, academic_year)
VALUES
('Unit Test 1', '2025-07-15', '2025-26'),
('Half Yearly', '2025-10-15', '2025-26'),
('Final Examination', '2026-03-10', '2025-26');

-- Create Trigger 

-- validate marks obtain
delimiter //
create trigger validate_marks
before insert on marks
for each row 
begin
    if new.marks_obtained < 0
    or new.marks_obtained > 100
then 
signal sqlstate '45000'
set message_text = "Invalid Marks" ;
end if ;
end //
delimiter ;

-- Create grade automatically
delimiter //
create trigger auto_grade
before insert on marks 
for each row
begin 
set new.grade = 
case 
    WHEN NEW.marks_obtained >= 90 THEN 'A+'
    WHEN NEW.marks_obtained >= 80 THEN 'A'
    WHEN NEW.marks_obtained >= 70 THEN 'B'
    WHEN NEW.marks_obtained >= 60 THEN 'C'
    WHEN NEW.marks_obtained >= 40 THEN 'D'
    ELSE 'F'
end ;
end //
delimiter ;

-- Data insert into marks
insert into marks  (student_id, subject_id, exam_id, marks_obtained)
select s.student_id , sub.subject_id, e.exam_id , 
mod(
    s.student_id * 17 +
    sub.subject_id * 13 +
    e.exam_id * 19,
    101
)
from students s
cross join subjects sub
cross join exams e ;

-- Quaries 

-- 1.Class topper of each classes and each section 
create view  Total_Marks as
SELECT
    c.class_name,
    c.section,
    s.student_id,
    s.roll_number,
    s.student_name,
    SUM(m.marks_obtained) AS Total_Marks
FROM classes c
JOIN students s
    ON c.class_id = s.class_id
JOIN marks m
    ON s.student_id = m.student_id
GROUP BY
    c.class_id,
    c.class_name,
    c.section,
    s.student_id,
    s.roll_number,
    s.student_name
ORDER BY class_name , section DESC;

select * from Total_Marks 
order by Section , Total_Marks
limit 1 ;

SELECT
    class_name,
    section,
    student_id,
    roll_number,
    student_name,
    Total_Marks
FROM ranked_students
WHERE student_rank = 1
ORDER BY class_name, section;

-- subject avarages
SELECT
    sub.subject_id,
    sub.subject_name,
    ROUND(AVG(m.marks_obtained), 2) AS average_marks,
    MAX(m.marks_obtained) AS highest_marks,
    MIN(m.marks_obtained) AS lowest_marks,
    COUNT(m.student_id) AS total_students
FROM marks m
JOIN subjects sub
    ON m.subject_id = sub.subject_id
GROUP BY
    sub.subject_id,
    sub.subject_name;

-- Commit and rollback

insert into marks
(student_id, subject_id, exam_id, marks_obtained)
values
(21, 1, 1, 85),
(21, 2, 1, 78),
(21, 3, 1, 90),
(21, 4, 1, 82),
(21, 5, 1, 88),
(21, 6, 1, 76);
commit;
start transaction;
insert into marks
(student_id, subject_id, exam_id, marks_obtained)
values
(22, 1, 1, 75),
(22, 2, 1, 80),
(22, 3, 1, 65);
rollback;

-- Views report card 

create view all_student_final_report as
SELECT
    c.class_name,
    c.section,
    s.student_id,
    s.roll_number,
    s.student_name,
    SUM(m.marks_obtained) AS total_marks,
    ROUND(AVG(m.marks_obtained), 2) AS average_marks,
    ROUND(SUM(m.marks_obtained) / 1800 * 100, 2) AS percentage
FROM students s
JOIN classes c
    ON s.class_id = c.class_id
JOIN marks m
    ON s.student_id = m.student_id
GROUP BY
    c.class_id,
    c.class_name,
    c.section,
    s.student_id,
    s.roll_number,
    s.student_name
ORDER BY
    c.class_id,
    s.roll_number;

select * from all_student_final_report;

SELECT
    'class_name',
    'section',
    'student_id',
    'roll_number',
    'student_name',
    'total_marks',
    'average_marks',
    'percentage'
UNION ALL
SELECT
    class_name,
    section,
    student_id,
    roll_number,
    student_name,
    total_marks,
    average_marks,
    percentage
FROM all_student_final_report
INTO OUTFILE '/var/lib/mysql-files/student_report_export.csv'
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n';


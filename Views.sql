use students;
CREATE TABLE students (
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    department VARCHAR(50)
);

CREATE TABLE subjects (
    subject_id INT PRIMARY KEY AUTO_INCREMENT,
    subject_name VARCHAR(100)
);

CREATE TABLE marks (
    student_id INT,
    subject_id INT,
    score INT,
    FOREIGN KEY (student_id) REFERENCES students(student_id),
    FOREIGN KEY (subject_id) REFERENCES subjects(subject_id)
);

INSERT INTO subjects (subject_name) VALUES
('Mathematics'),
('Physics'),
('Computer Science');

INSERT INTO students (name, department) VALUES
('Aarav Sharma','CSE'),
('Vivaan Reddy','IT'),
('Aditya Kumar','ECE'),
('Arjun Nair','EEE'),
('Sai Krishna','CSE'),
('Rahul Verma','IT'),
('Karthik Raj','ECE'),
('Rohit Singh','EEE'),
('Vikram Patel','CSE'),
('Manoj Kumar','IT'),

('Suresh Babu','ECE'),
('Naveen Kumar','EEE'),
('Praveen Kumar','CSE'),
('Harsha Vardhan','IT'),
('Teja Reddy','ECE'),
('Anil Kumar','EEE'),
('Rakesh Sharma','CSE'),
('Deepak Singh','IT'),
('Sunil Kumar','ECE'),
('Mahesh Babu','EEE'),

('Ajay Kumar','CSE'),
('Varun Tej','IT'),
('Kiran Kumar','ECE'),
('Naresh Kumar','EEE'),
('Tarun Kumar','CSE'),
('Gopi Krishna','IT'),
('Srikanth Reddy','ECE'),
('Lokesh Kumar','EEE'),
('Pavan Kumar','CSE'),
('Venu Gopal','IT'),

('Chaitanya','ECE'),
('Bhargav','EEE'),
('Dinesh Kumar','CSE'),
('Ganesh Kumar','IT'),
('Hemanth Kumar','ECE'),
('Jagadeesh','EEE'),
('Kishore Kumar','CSE'),
('Lohith Kumar','IT'),
('Madhav','ECE'),
('Nithin Kumar','EEE'),

('Om Prakash','CSE'),
('Pankaj Kumar','IT'),
('Qureshi Ahmed','ECE'),
('Ravi Teja','EEE'),
('Sandeep Kumar','CSE'),
('Tushar Gupta','IT'),
('Uday Kumar','ECE'),
('Vamsi Krishna','EEE'),
('Yash Sharma','CSE'),
('Zubair Khan','IT');

INSERT INTO marks (student_id, subject_id, score) VALUES
(1, 1, 47), (1, 2, 81), (1, 3, 100), (2, 1, 98), (2, 2, 54), (2, 3, 76), (3, 1, 87), (3, 2, 57), (3, 3, 60),
(4, 1, 59), (4, 2, 91), (4, 3, 100), (5, 1, 67), (5, 2, 75), (5, 3, 45), (6, 1, 42), (6, 2, 64), (6, 3, 50),
(7, 1, 74), (7, 2, 99), (7, 3, 47), (8, 1, 100), (8, 2, 66), (8, 3, 96), (9, 1, 45), (9, 2, 52), (9, 3, 59),
(10, 1, 97), (10, 2, 61), (10, 3, 46), (11, 1, 54), (11, 2, 100), (11, 3, 53), (12, 1, 86), (12, 2, 85), (12, 3, 82),
(13, 1, 87), (13, 2, 99), (13, 3, 44), (14, 1, 54), (14, 2, 80), (14, 3, 60), (15, 1, 46), (15, 2, 42), (15, 3, 99),
(16, 1, 51), (16, 2, 75), (16, 3, 45), (17, 1, 47), (17, 2, 68), (17, 3, 44), (18, 1, 99), (18, 2, 55), (18, 3, 74),
(19, 1, 78), (19, 2, 45), (19, 3, 49), (20, 1, 43), (20, 2, 97), (20, 3, 72), (21, 1, 75), (21, 2, 65), (21, 3, 43),
(22, 1, 84), (22, 2, 100), (22, 3, 61), (23, 1, 93), (23, 2, 44), (23, 3, 79), (24, 1, 89), (24, 2, 80), (24, 3, 61),
(25, 1, 67), (25, 2, 75), (25, 3, 89), (26, 1, 90), (26, 2, 92), (26, 3, 75), (27, 1, 56), (27, 2, 51), (27, 3, 98),
(28, 1, 59), (28, 2, 98), (28, 3, 42), (29, 1, 86), (29, 2, 96), (29, 3, 52), (30, 1, 46), (30, 2, 72), (30, 3, 72),
(31, 1, 62), (31, 2, 78), (31, 3, 44), (32, 1, 70), (32, 2, 50), (32, 3, 47), (33, 1, 74), (33, 2, 59), (33, 3, 41),
(34, 1, 58), (34, 2, 61), (34, 3, 97), (35, 1, 93), (35, 2, 86), (35, 3, 67), (36, 1, 81), (36, 2, 64), (36, 3, 75),
(37, 1, 91), (37, 2, 57), (37, 3, 52), (38, 1, 49), (38, 2, 59), (38, 3, 98), (39, 1, 53), (39, 2, 46), (39, 3, 66),
(40, 1, 100), (40, 2, 93), (40, 3, 44), (41, 1, 50), (41, 2, 80), (41, 3, 79), (42, 1, 66), (42, 2, 52), (42, 3, 54),
(43, 1, 90), (43, 2, 58), (43, 3, 52), (44, 1, 85), (44, 2, 65), (44, 3, 91), (45, 1, 100), (45, 2, 66), (45, 3, 41),
(46, 1, 91), (46, 2, 58), (46, 3, 75), (47, 1, 53), (47, 2, 58), (47, 3, 45), (48, 1, 55), (48, 2, 58), (48, 3, 74),
(49, 1, 47), (49, 2, 47), (49, 3, 42), (50, 1, 100), (50, 2, 51), (50, 3, 90);

select * from students;
select * from subjects;
select * from marks;

CREATE VIEW student_total_marks AS
SELECT student_id, SUM(score) AS total_marks
FROM marks
GROUP BY student_id;
 
 select * from student_total_marks;
 
SELECT student_id,
       total_marks,
       CASE
           WHEN total_marks >= 270 THEN 'A'
           WHEN total_marks >= 240 THEN 'B'
           ELSE 'C'
       END AS grade
FROM student_total_marks;

CREATE INDEX idx_student_id ON marks(student_id);

DELIMITER //
CREATE PROCEDURE get_student_result(IN sid INT)
BEGIN
    SELECT * FROM marks WHERE student_id = sid;
END //
DELIMITER ;

call get_student_result(1);
call get_student_result(5);
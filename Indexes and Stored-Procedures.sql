USE hospital;
CREATE TABLE doctors (
    doctor_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    specialization VARCHAR(100)
);

CREATE TABLE patients (
    patient_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    age INT,
    disease VARCHAR(100)
);

CREATE TABLE appointments (
    appointment_id INT PRIMARY KEY AUTO_INCREMENT,
    doctor_id INT,
    patient_id INT,
    appointment_date DATE,

    FOREIGN KEY (doctor_id) REFERENCES doctors(doctor_id),
    FOREIGN KEY (patient_id) REFERENCES patients(patient_id)
);

INSERT INTO doctors (name, specialization) VALUES
('Dr. Ravi Kumar','Cardiology'),
('Dr. Priya Sharma','Dermatology'),
('Dr. Arjun Reddy','Neurology'),
('Dr. Sneha Patel','Pediatrics'),
('Dr. Kiran Rao','Orthopedics'),
('Dr. Meena Iyer','Gynecology'),
('Dr. Rahul Verma','ENT'),
('Dr. Anjali Gupta','General Medicine'),
('Dr. Vivek Singh','Oncology'),
('Dr. Kavya Nair','Psychiatry');

INSERT INTO patients (name, age, disease) VALUES
('Amit Kumar',25,'Fever'),
('Rohit Sharma',30,'Cold'),
('Neha Patel',22,'Skin Allergy'),
('Pooja Singh',28,'Headache'),
('Rahul Das',35,'Diabetes'),
('Anjali Mehta',26,'Asthma'),
('Kiran Kumar',40,'Back Pain'),
('Sneha Reddy',24,'Flu'),
('Vikram Singh',32,'Heart Issue'),
('Divya Nair',27,'Migraine'),
('Suresh Babu',45,'Arthritis'),
('Meena Iyer',38,'Thyroid'),
('Rakesh Yadav',29,'Fever'),
('Kavya Menon',23,'Cold'),
('Manoj Kumar',50,'BP'),
('Swathi Rao',34,'Skin Issue'),
('Ajay Mishra',31,'Infection'),
('Deepika Singh',28,'Flu'),
('Sunil Kumar',36,'Diabetes'),
('Aishwarya Rai',21,'Allergy'),
('Naveen Kumar',33,'Cold'),
('Lakshmi Devi',42,'BP'),
('Gopal Krishna',39,'Back Pain'),
('Ritu Sharma',26,'Fever'),
('Harish Kumar',48,'Heart Issue'),
('Anitha Reddy',37,'Flu'),
('Kiran Kumar',41,'Asthma'),
('Preeti Singh',22,'Headache'),
('Dinesh Kumar',35,'Diabetes'),
('Shalini Gupta',27,'Skin Issue'),
('Praveen Kumar',30,'Cold'),
('Nisha Verma',24,'Fever'),
('Vijay Kumar',46,'BP'),
('Keerthi Nair',28,'Migraine'),
('Sanjay Kumar',38,'Arthritis'),
('Bhavana Rao',29,'Flu'),
('Ravi Kumar',44,'Heart Issue'),
('Pallavi Singh',23,'Cold'),
('Mahesh Kumar',50,'Diabetes'),
('Anu Joseph',31,'Skin Issue'),
('Kishore Kumar',36,'Back Pain'),
('Reshma Khan',27,'Fever'),
('Varun Sharma',33,'Flu'),
('Sonia Gupta',25,'Cold'),
('Tarun Kumar',40,'BP'),
('Jyothi Reddy',29,'Asthma'),
('Arvind Kumar',34,'Diabetes'),
('Madhavi Iyer',38,'Migraine'),
('Zubair Khan',32,'Fever'),
('Rohini Das',26,'Cold');

INSERT INTO appointments (doctor_id, patient_id, appointment_date) VALUES
(1,1,'2025-04-01'),(2,2,'2025-04-01'),(3,3,'2025-04-02'),
(4,4,'2025-04-02'),(5,5,'2025-04-03'),(6,6,'2025-04-03'),
(7,7,'2025-04-04'),(8,8,'2025-04-04'),(9,9,'2025-04-05'),
(10,10,'2025-04-05'),
(1,11,'2025-04-06'),(2,12,'2025-04-06'),(3,13,'2025-04-07'),
(4,14,'2025-04-07'),(5,15,'2025-04-08'),(6,16,'2025-04-08'),
(7,17,'2025-04-09'),(8,18,'2025-04-09'),(9,19,'2025-04-10'),
(10,20,'2025-04-10'),
(1,21,'2025-04-11'),(2,22,'2025-04-11'),(3,23,'2025-04-12'),
(4,24,'2025-04-12'),(5,25,'2025-04-13'),(6,26,'2025-04-13'),
(7,27,'2025-04-14'),(8,28,'2025-04-14'),(9,29,'2025-04-15'),
(10,30,'2025-04-15'),
(1,31,'2025-04-16'),(2,32,'2025-04-16'),(3,33,'2025-04-17'),
(4,34,'2025-04-17'),(5,35,'2025-04-18'),(6,36,'2025-04-18'),
(7,37,'2025-04-19'),(8,38,'2025-04-19'),(9,39,'2025-04-20'),
(10,40,'2025-04-20'),
(1,41,'2025-04-21'),(2,42,'2025-04-21'),(3,43,'2025-04-22'),
(4,44,'2025-04-22'),(5,45,'2025-04-23'),(6,46,'2025-04-23'),
(7,47,'2025-04-24'),(8,48,'2025-04-24'),(9,49,'2025-04-25'),
(10,50,'2025-04-25');

select * from doctors;
select * from patients;
select * from appointments;

CREATE VIEW doctor_appointments AS
SELECT 
    d.name AS doctor_name,
    COUNT(a.appointment_id) AS total_appointments
FROM doctors d
JOIN appointments a ON d.doctor_id = a.doctor_id
GROUP BY d.doctor_id, d.name;

SELECT * FROM doctor_appointments;

CREATE INDEX idx_appointment_date ON appointments(appointment_date);

DELIMITER //

CREATE PROCEDURE get_patients_by_doctor(IN did INT)
BEGIN
    SELECT 
        p.name,
        p.disease,
        a.appointment_date
    FROM patients p
    JOIN appointments a ON p.patient_id = a.patient_id
    WHERE a.doctor_id = did;
END //

DELIMITER ;

CALL get_patients_by_doctor(1);
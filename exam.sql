CREATE DATABASE Hospital_Management_System;

PATIENTS TABLE:-

CREATE TABLE Patients (
    patient_id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    dob DATE,
    gender VARCHAR(10),
    phone_number VARCHAR(15),
    email VARCHAR(100),
    address VARCHAR(200),
    registration_date DATE
);

INSERT INTO Patients VALUES
(1,'Aarav Patel','2001-05-12','Male','9876543210','aarav@gmail.com','Ahmedabad','2026-01-05'),
(2,'Riya Shah','1999-08-20','Female','9876543211','riya@gmail.com','Surat','2026-01-10'),
(3,'Dev Mehta','1995-02-15','Male','9876543212','dev@gmail.com','Vadodara','2026-01-15'),
(4,'Anaya Desai','2003-11-10','Female','9876543213','anaya@gmail.com','Ahmedabad','2026-02-01'),
(5,'Vivaan Joshi','1988-06-25','Male','9876543214','vivaan@gmail.com','Rajkot','2026-02-05'),
(6,'Isha Patel','2000-03-18','Female','9876543215','isha@gmail.com','Ahmedabad','2026-02-12'),
(7,'Krish Shah','1992-09-30','Male','9876543216','krish@gmail.com','Surat','2026-02-20'),
(8,'Meera Trivedi','1985-12-05','Female','9876543217','meera@gmail.com','Vadodara','2026-03-01'),
(9,'Yash Thakkar','1998-07-14','Male','9876543218','yash@gmail.com','Ahmedabad','2026-03-10'),
(10,'Diya Patel','2004-04-22','Female','9876543219','diya@gmail.com','Rajkot','2026-03-15'),
(11,'Arjun Shah','1990-10-11','Male','9876543220','arjun@gmail.com','Ahmedabad','2026-04-01'),
(12,'Kavya Mehta','1997-01-28','Female','9876543221','kavya@gmail.com','Surat','2026-04-05'),
(13,'Manav Desai','1983-05-19','Male','9876543222','manav@gmail.com','Vadodara','2026-04-12'),
(14,'Pooja Joshi','1994-09-09','Female','9876543223','pooja@gmail.com','Ahmedabad','2026-05-01'),
(15,'Dhruv Patel','2002-02-27','Male','9876543224','dhruv@gmail.com','Surat','2026-05-10');

DOCTOR TABLE:-

CREATE TABLE Doctors (
    doctor_id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    specialization VARCHAR(100),
    phone_number VARCHAR(15),
    email VARCHAR(100),
    available_days VARCHAR(100),
    consultation_fee DECIMAL(10,2)
);

INSERT INTO Doctors VALUES
(1,'Dr. Raj Sharma','Cardiology','9000000001','raj@hospital.com','Monday, Wednesday, Friday',1500),
(2,'Dr. Neha Patel','Dermatology','9000000002','neha@hospital.com','Tuesday, Thursday',1000),
(3,'Dr. Amit Shah','Neurology','9000000003','amit@hospital.com','Monday, Thursday',1800),
(4,'Dr. Priya Mehta','Pediatrics','9000000004','priya@hospital.com','Monday, Wednesday',1200),
(5,'Dr. Karan Desai','Orthopedics','9000000005','karan@hospital.com','Tuesday, Friday',1600),
(6,'Dr. Rina Joshi','General Medicine','9000000006','rina@hospital.com','Monday, Tuesday, Friday',800),
(7,'Dr. Vivek Trivedi','Cardiology','9000000007','vivek@hospital.com','Wednesday, Saturday',1700),
(8,'Dr. Simran Shah','Dermatology','9000000008','simran@hospital.com','Thursday, Saturday',1100);

DEPARTMENT TABLE:-

CREATE TABLE Departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100) NOT NULL
);

INSERT INTO Departments VALUES
(1,'Cardiology'),
(2,'Dermatology'),
(3,'Neurology'),
(4,'Pediatrics'),
(5,'Orthopedics'),
(6,'General Medicine');



APPOINTMENT TABLE:-

CREATE TABLE Appointments (
    appointment_id INT PRIMARY KEY,
    patient_id INT,
    doctor_id INT,
    appointment_date DATE,
    status VARCHAR(20),
    FOREIGN KEY (patient_id) REFERENCES Patients(patient_id),
    FOREIGN KEY (doctor_id) REFERENCES Doctors(doctor_id)
);
INSERT INTO Appointments VALUES
(1,1,1,'2026-06-01','Completed'),
(2,2,2,'2026-06-03','Scheduled'),
(3,3,3,'2026-06-05','Completed'),
(4,4,4,'2026-06-07','Completed'),
(5,5,5,'2026-06-10','Cancelled'),
(6,6,6,'2026-06-12','Completed'),
(7,7,1,'2026-06-15','Scheduled'),
(8,8,7,'2026-06-18','Completed'),
(9,9,3,'2026-06-20','Completed'),
(10,10,4,'2026-06-22','Scheduled'),
(11,11,5,'2026-06-25','Completed'),
(12,12,2,'2026-06-27','Cancelled'),
(13,13,6,'2026-07-01','Completed'),
(14,14,8,'2026-07-03','Scheduled'),
(15,15,1,'2026-07-05','Completed');

MEDICAL RECORD TABLE:-

CREATE TABLE Medical_Records (
    record_id INT PRIMARY KEY,
    patient_id INT,
    doctor_id INT,
    diagnosis VARCHAR(200),
    prescription VARCHAR(300),
    treatment_date DATE,
    FOREIGN KEY (patient_id) REFERENCES Patients(patient_id),
    FOREIGN KEY (doctor_id) REFERENCES Doctors(doctor_id)
);

INSERT INTO Medical_Records VALUES
(1,1,1,'High Blood Pressure','BP Medicine','2026-06-01'),
(2,2,2,'Skin Allergy','Antihistamine Cream','2026-06-03'),
(3,3,3,'Migraine','Pain Relief Tablets','2026-06-05'),
(4,4,4,'Fever','Paracetamol','2026-06-07'),
(5,6,6,'Viral Infection','Antibiotics','2026-06-12'),
(6,7,1,'Chest Pain','ECG and Heart Medicine','2026-06-15'),
(7,8,7,'Heart Problem','Heart Medicine','2026-06-18'),
(8,9,3,'Migraine','Migraine Tablets','2026-06-20'),
(9,10,4,'Cold and Fever','Syrup and Tablets','2026-06-22'),
(10,11,5,'Knee Pain','Painkiller and Exercise','2026-06-25'),
(11,13,6,'Diabetes','Diabetes Medicine','2026-07-01'),
(12,15,1,'Cholesterol','Cholesterol Medicine','2026-07-05');

BILLING TABLE:-

CREATE TABLE Billing (
    invoice_id INT PRIMARY KEY,
    patient_id INT,
    appointment_id INT,
    amount DECIMAL(10,2),
    payment_status VARCHAR(20),
    payment_date DATE,
    FOREIGN KEY (patient_id) REFERENCES Patients(patient_id),
    FOREIGN KEY (appointment_id) REFERENCES Appointments(appointment_id)
);

INSERT INTO Billing VALUES
(1,1,1,2500,'Paid','2026-06-01'),
(2,2,2,1500,'Pending','2026-06-03'),
(3,3,3,3000,'Paid','2026-06-05'),
(4,4,4,1800,'Paid','2026-06-07'),
(5,5,5,1600,'Cancelled','2026-06-10'),
(6,6,6,1200,'Paid','2026-06-12'),
(7,7,7,2500,'Pending','2026-06-15'),
(8,8,8,2800,'Paid','2026-06-18'),
(9,9,9,3000,'Paid','2026-06-20'),
(10,10,10,1800,'Pending','2026-06-22'),
(11,11,11,2600,'Paid','2026-06-25'),
(12,12,12,1500,'Cancelled','2026-06-27'),
(13,13,13,1200,'Paid','2026-07-01'),
(14,14,14,1600,'Pending','2026-07-03'),
(15,15,15,2500,'Paid','2026-07-05');

DOCTOR DEPARTMENT TABLE:-

CREATE TABLE Doctor_Departments (
    doctor_id INT,
    department_id INT,
    PRIMARY KEY (doctor_id, department_id),
    FOREIGN KEY (doctor_id) REFERENCES Doctors(doctor_id),
    FOREIGN KEY (department_id) REFERENCES Departments(department_id)
);

INSERT INTO Doctor_Departments VALUES
(1,1),
(2,2),
(3,3),
(4,4),
(5,5),
(6,6),
(7,1),
(8,2);

1.CRUD OPERATIONS:-
 
* INSERT
INSERT INTO Patients
VALUES
(16,'Nisha Patel','2001-10-15','Female','9876543225',
'nisha@gmail.com','Ahmedabad','2026-07-10');

* UPDATE
UPDATE Patients
SET phone_number = '9999999999',
    address = 'Gandhinagar'
WHERE patient_id = 16;

* DELETE
DELETE FROM Patients
WHERE patient_id = 16;


2.SQL CLAUSES:-

* LIMIT
SELECT * FROM Patients
LIMIT 20;

*WHERE
SELECT * FROM Doctors
WHERE consultation_fee > 1500;

* HIGHST PAYING
SELECT p.patient_id, p.name, SUM(b.amount) AS total_amount
FROM Patients p
JOIN Billing b ON p.patient_id = b.patient_id
GROUP BY p.patient_id, p.name
ORDER BY total_amount DESC
LIMIT 5;

3. SQL OPERATORS:-

* AND
SELECT *
FROM Appointments
WHERE status = 'Scheduled'
AND doctor_id = 1;

* OR
SELECT *
FROM Doctors
WHERE specialization = 'Cardiology'
OR specialization = 'Neurology';

* NOT
SELECT *
FROM Appointments
WHERE NOT status = 'Cancelled';

4. SORTING &GROUPING DATA:-

•	SELECT *
        FROM Patients
        ORDER BY name ASC;

•	    SELECT *
            FROM Doctors
            ORDER BY consultation_fee DESC;

•	    SELECT gender, COUNT(*) AS total_patients
            FROM Patients
            GROUP BY gender;

5.AGGREGATE FUNCTION :-
•	Total
SELECT SUM(amount) AS total_revenue
FROM Billing
WHERE payment_status = 'Paid';

•	Maximum
SELECT MAX(amount) AS maximum_bill
FROM Billing;

•	Minimum
SELECT MIN(amount) AS minimum_bill
FROM Billing;

•	Average
SELECT AVG(amount) AS average_bill
FROM Billing;

6. FOREIGN&PRIMARY KEY RELATION:-
•	PATIENT HAVING AAPOINTMENT
SELECT p.patient_id, p.name, a.appointment_date
FROM Patients p
INNER JOIN Appointments a
ON p.patient_id = a.patient_id;

•	DOCTOR HAVING APPOIENTMENT
SELECT d.doctor_id, d.name, a.appointment_date
FROM Doctors d
INNER JOIN Appointments a
ON d.doctor_id = a.doctor_id;

7.JOINS:-
•	INNER JOIN
SELECT p.name AS patient_name,
       d.name AS doctor_name,
       a.appointment_date
FROM Appointments a
INNER JOIN Patients p
ON a.patient_id = p.patient_id
INNER JOIN Doctors d
ON a.doctor_id = d.doctor_id;

•	LEFT JOIN
SELECT p.name AS patient_name,
       a.appointment_date
FROM Patients p
LEFT JOIN Appointments a
ON p.patient_id = a.patient_id;

•	RIGHT JOIN
SELECT d.name AS doctor_name,
       a.appointment_date
FROM Appointments a
RIGHT JOIN Doctors d
ON a.doctor_id = d.doctor_id;

•	FULL OUTER JOIN
SELECT p.name, a.appointment_date
FROM Patients p
LEFT JOIN Appointments a
ON p.patient_id = a.patient_id
UNION
SELECT p.name, a.appointment_date
FROM Patients p
RIGHT JOIN Appointments a
ON p.patient_id = a.patient_id;

8.SUBQUERIES:-
•	GREATER THAN AVG BILL
SELECT *
FROM Patients
WHERE patient_id IN
(
    SELECT patient_id
    FROM Billing
    WHERE amount > (SELECT AVG(amount) FROM Billing)
);

•	GREATER THAN AVG FEE
SELECT *
FROM Doctors
WHERE consultation_fee >
(
    SELECT AVG(consultation_fee)
    FROM Doctors
);

•	APPOINTMENTS WITH DERMATOLOGY DOCTOR
SELECT *
FROM Patients
WHERE patient_id IN
(
    SELECT patient_id
    FROM Appointments
    WHERE doctor_id IN
    (
        SELECT doctor_id
        FROM Doctors
        WHERE specialization = 'Dermatology'
    )
);

9. DATE&TIME:-
•	APPOINTMENT DATE
SELECT *
FROM Appointments
WHERE MONTH(appointment_date) = 6
AND YEAR(appointment_date) = 2026;

•	CALCULATE THE TOTAL STAY 
SELECT patient_id,
       name,
       DATEDIFF(CURDATE(), registration_date) AS days_since_registration
FROM Patients;

•	DD-MM-YYYY
SELECT record_id,
       patient_id,
       DATE_FORMAT(treatment_date,'%d-%m-%Y') AS treatment_date
FROM Medical_Records;


10. STRING MANIPULATION FUNCTION:-
•	UPPERCASE
SELECT UPPER(name) AS patient_name
FROM Patients;

•	LOWERCASE
SELECT LOWER(name) AS patient_name
FROM Patients;

•	NOT AVAILABLE
SELECT name,
       COALESCE(email,'Not Available') AS email
FROM Patients;

11. IMPLIMENT WINDOW FUNCTION:-
•	RANK
SELECT
    d.doctor_id,
    d.name,
    COUNT(m.record_id) AS patients_treated,
    RANK() OVER (ORDER BY COUNT(m.record_id) DESC) AS doctor_rank
FROM Doctors d
LEFT JOIN Medical_Records m
ON d.doctor_id = m.doctor_id
GROUP BY d.doctor_id, d.name;

•	CUMULATIVE RENVENUE
SELECT
    DATE_FORMAT(payment_date, '%Y-%m') AS month,
    SUM(amount) AS monthly_revenue,
    SUM(SUM(amount)) OVER (
        ORDER BY DATE_FORMAT(payment_date, '%Y-%m')
    ) AS cumulative_revenue
FROM Billing
WHERE payment_status = 'Paid'
GROUP BY DATE_FORMAT(payment_date, '%Y-%m');

•	RUNNING TOTAL OF APPOINTMENTS MADE’
SELECT
    appointment_id,
    patient_id,
    doctor_id,
    appointment_date,
    RANK() OVER (
        ORDER BY appointment_date
    ) AS appointment_rank
FROM Appointments;

12.CASE EXPRESSIONS:-
•	ASSIGN PAITENT
SELECT
    p.patient_id,
    p.name,
    COUNT(m.record_id) AS total_records,
    CASE
        WHEN COUNT(m.record_id) > 5 THEN 'High'
        WHEN COUNT(m.record_id) = 5 THEN 'Medium'
        ELSE 'Low'
    END AS risk_level
FROM Patients p
LEFT JOIN Medical_Records m
ON p.patient_id = m.patient_id
GROUP BY p.patient_id, p.name;

•	CATEGORIZE DOCTORE

ADDING A COLUMN:

ALTER TABLE Doctors
ADD experience_years INT;

UPDATE Doctors SET experience_years = 18 WHERE doctor_id = 1;
UPDATE Doctors SET experience_years = 12 WHERE doctor_id = 2;
UPDATE Doctors SET experience_years = 20 WHERE doctor_id = 3;
UPDATE Doctors SET experience_years = 7 WHERE doctor_id = 4;
UPDATE Doctors SET experience_years = 15 WHERE doctor_id = 5;
UPDATE Doctors SET experience_years = 4 WHERE doctor_id = 6;
UPDATE Doctors SET experience_years = 17 WHERE doctor_id = 7;
UPDATE Doctors SET experience_years = 9 WHERE doctor_id = 8;
SELECT
    doctor_id,
    name,
    experience_years,
    CASE
        WHEN experience_years > 15 THEN 'Senior'
        WHEN experience_years BETWEEN 5 AND 15 THEN 'Mid-Level'
        ELSE 'Junior'
    END AS doctor_category
FROM Doctors;



























































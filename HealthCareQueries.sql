CREATE DATABASE HealthCare;

USE HealthCare;
                        
SET GLOBAL local_infile = 1;

SHOW VARIABLES LIKE 'local_infile';


-- DOCTOR TABLE

CREATE TABLE Doctor(
					DoctorId INT PRIMARY KEY,
                    DoctorName VARCHAR(50),
                    Speciality VARCHAR(25),
                    PhoneNumber VARCHAR(50),
                    YearOfExperience INT,
                    Hospitalaffiliation VARCHAR(50),
                    HospitalORClinic VARCHAR(50),
                    Email VARCHAR(50));

-- PATIENT TABLE
                    
CREATE TABLE Patient(
					PatientId INT PRIMARY KEY,
                    Gender VARCHAR(10),
                    DateOfBirth DATE,
                    Age INT,
                    PhoneNumber VARCHAR(50),
                    Address VARCHAR(50),
                    BloodType VARCHAR(5),
                    EmergencyContact VARCHAR(50),
                    InsuranceProvider VARCHAR(50),
                    State VARCHAR(20),
                    City VARCHAR(20),
                    Country VARCHAR(10),
                    PolicyNumber VARCHAR(10),
                    MedicalHistory VARCHAR(10),
                    Race VARCHAR(10),
                    Ethnicity VARCHAR(10),
                    MaritalStatus VARCHAR(10),
                    FirstName VARCHAR(25),
                    LastName VARCHAR(25),
                    EmergencyContact1 VARCHAR(50),
                    ChronicConditions VARCHAR(20),
                    Allergies VARCHAR(20),
                    ContactNumber VARCHAR(50));
                    
-- VISIT TABLE
                    
CREATE TABLE Visit(
					VisitId INT PRIMARY KEY,
                    PatientId INT,
                    FOREIGN kEY(PatientId) REFERENCES Patient(PatientId) ON UPDATE CASCADE ON DELETE CASCADE,
                    DoctorId INT,
                    FOREIGN kEY(DoctorId) REFERENCES Doctor(DoctorId) ON UPDATE CASCADE ON DELETE CASCADE,
                    VisitDate DATE,
                    Diagnosis VARCHAR(25),
                    FollowUpRequired VARCHAR(5),
                    VisitType VARCHAR(25),
                    VisitStatus VARCHAR(25),
                    DiagnosisCode VARCHAR(10),
                    VisitReason VARCHAR(80),
                    PrescribedMedication VARCHAR(50));

-- LAB RESULT TABLE

CREATE TABLE LabResult(
						LabResultId INT PRIMARY KEY,
                        VisitId INT, 
                        FOREIGN KEY(VisitId) REFERENCES Visit(VisitId) ON UPDATE CASCADE ON DELETE CASCADE,
                        TestName Varchar(50),
                        TestDate DATE,
                        Units VARCHAR(10),
                        Comments VARCHAR(80),
                        TestResult VARCHAR(15),
                        ReferenceRange VARCHAR(20));
                        
-- TREATMENT TABLE

CREATE TABLE Treatments(
						TreatmentId INT PRIMARY KEY,
                        VisitId INT, 
                        FOREIGN KEY(VisitId) REFERENCES Visit(VisitId) ON UPDATE CASCADE ON DELETE CASCADE,
                        MedicationPrescribed VARCHAR(25),
                        Dosage VARCHAR(10),
                        Instruction VARCHAR(80),
                        TreatmentCost FLOAT,
                        TreatmentType VARCHAR(25),
                        TreatmentName VARCHAR(25),
                        Status VARCHAR(25),
                        Cost Float,
                        OutCome VARCHAR(25),
                        Description VARCHAR(50));
                        

SELECT * FROM Doctor;

SELECT * FROM Patient;

SELECT * FROM visit;

SELECT * FROM labresult;

SELECT * FROM Treatments;			
                
-- Total Patients

SELECT
	COUNT(*) AS TotalPatients
FROM Patient;


-- Total Doctors

SELECT
	COUNT(*) AS TotalDoctors
FROM Doctor;


-- Total Visits

SELECT
	COUNT(*) AS TotalVisits
FROM Visit;


-- Average Age of Patients

SELECT 
	ROUND(AVG(Age),2) AS AverageAge
From Patient;

-- Top 5 Diagonised Conditions

SELECT 
	Diagnosis,
    COUNT(*) as CountOfPatients
FROM Visit
GROUP BY Diagnosis
ORDER BY CountOfPatients DESC
LIMIT 5;

-- Treatment Cost Per Visit 

SELECT 
	TreatmentType,
    ROUND(AVG(TreatmentCost),2) AS AverageTreatmentCost
FROM Treatments
GROUP BY TreatmentType;

-- Total Lab Tests Conducted

SELECT 
	COUNT(*) AS TotalLabTestsConducted
FROM Labresult;

-- Percentage of abnormal Lab Result

SELECT 
    CONCAT(
        ROUND(
            SUM(CASE WHEN TestResult = 'Abnormal' THEN 1 ELSE 0 END) * 100.0 
            / COUNT(*),
            2
        ),
        '%'
    ) AS AbnormalResultPercentage
FROM LabResult;

-- Average Patients Per Doctor

SELECT 
    ROUND(
        COUNT(DISTINCT patientid) * 1.0 
        / COUNT(DISTINCT doctorid), 
        2
    ) AS AvgPatientsPerDoctor
FROM Visit;

-- Total Revenue

SELECT 
    CONCAT(
        ROUND((SUM(TreatmentCost) + SUM(Cost)) / 1000000, 2),
        'M'
    ) AS TotalRevenue
FROM Treatments;







                    
                    

                        
                    
                    
                    
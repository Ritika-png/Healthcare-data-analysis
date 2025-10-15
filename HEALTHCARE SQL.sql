-- Creating Database named Healthcare.
Create database Healthcare;

-- Creating table healthcare.
create table healthcare(date DATE, 
patient_id varchar(15),
patient_gender varchar(8), 
patient_age varchar(5), 
patient_sat_score varchar(5), 
Full_Name varchar(25),
patient_race varchar(30),
patient_admin_flag varchar(10),
patient_waittime varchar(5),
department_referral	varchar(20),
Moment varchar(10)
);

-- Viewing Data on Database
select * from healthcare;

-- 1.  Counting Total Record in Database
SELECT COUNT(*) FROM healthcare;	

-- 2. Finding maximum age of patient admitted.
select max(patient_age) as Maximum_Age from healthcare;

-- 3. Calculating Patients Hospitalized Age-wise from Maximum to Minimum
SELECT patient_age as AGE, COUNT(patient_age) AS Total
FROM Healthcare
GROUP BY patient_age
ORDER BY patient_age DESC;

-- 4. Calculating Maximum Count of patients on basis of total patients hospitalized with respect to age.
SELECT patient_age, COUNT(patient_age) AS Total
FROM Healthcare
GROUP BY patient_age
ORDER BY Total DESC,patient_age DESC;

-- 5. Finding Count of patient_race of patients and lisitng it by maximum no of patients.
SELECT patient_race, COUNT(patient_race) as Total_Patients 
FROM healthcare
GROUP BY patient_race
ORDER BY Total_patients DESC;

-- 6. patient age by gender
SELECT patient_gender
FROM healthcare
GROUP BY patient_gender;

-- 7. Number of patients by race and gender
SELECT patient_race, patient_gender, COUNT(*) AS patient_count
FROM healthcare
GROUP BY patient_race, patient_gender
ORDER BY patient_race, patient_gender;


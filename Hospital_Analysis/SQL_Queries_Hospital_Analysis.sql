--Total No of Hospitals 
Select Count(*) As total_hosp_count
From Hospital_General_Info

--Count of Hospitals in each State
SELECT state, COUNT(*) AS hospital_count
FROM Hospital_General_Info
Group BY state
Order BY hospital_count DESC;

--Average Hospital Rating Per State
SELECT state, AVG(CAST(hospital_overall_rating AS FLOAT)) AS avg_rating
FROM Hospital_General_Info
WHERE hospital_overall_rating IS NOT NULL
GROUP BY state
ORDER BY avg_rating DESC;

--Top 5 Hospitals by Rating
SELECT TOP 5 Facility_Name, state, hospital_overall_rating
FROM Hospital_General_Info
WHERE hospital_overall_rating IS NOT NULL
ORDER BY hospital_overall_rating DESC;

--Bottom 5 Hospitals by Rating
SELECT TOP 5 Facility_Name, state, hospital_overall_rating
FROM Hospital_General_Info
WHERE hospital_overall_rating IS NOT NULL
ORDER BY hospital_overall_rating ASC;

--Count of Hospitals by Ownership
SELECT hospital_ownership, COUNT(*) AS count
FROM Hospital_General_Info
GROUP BY hospital_ownership
ORDER BY count DESC;

--Count of Hospitals by Type
SELECT hospital_type, COUNT(*) AS count
FROM Hospital_General_Info
GROUP BY hospital_type
ORDER BY count DESC;

--Count of Hospitals with Emergency Services
SELECT COUNT(*) AS hospitals_with_emergency
FROM Hospital_General_Info
WHERE emergency_services = 1;
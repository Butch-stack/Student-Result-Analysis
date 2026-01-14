-- ===============================
-- STUDENT RESULT ANALYSIS PROJECT
-- ===============================

-- 1️⃣ TABLE CREATION
CREATE TABLE student_results (
    student_id INT,
    student_name VARCHAR(100),
    class VARCHAR(20),
    subject VARCHAR(50),
    marks_obtained INT,
    total_marks INT,
    percentage NUMERIC(5,2),
    grade VARCHAR(5),
    result_status VARCHAR(10)
);

-- 2️⃣ DATA IMPORT (PostgreSQL)
-- \copy student_results
-- FROM 'data/student_results.csv'
-- WITH (FORMAT csv, HEADER true, ENCODING 'UTF8');

-- 3️⃣ EXPLORATORY DATA ANALYSIS (EDA)

-- Total records
SELECT COUNT(*) AS total_records FROM student_results;

-- Total unique students
SELECT COUNT(DISTINCT student_id) AS total_students FROM student_results;

-- Subjects offered
SELECT DISTINCT subject FROM student_results;

-- Pass vs Fail count
SELECT result_status, COUNT(*) AS count
FROM student_results
GROUP BY result_status;

-- 4️⃣ PERFORMANCE ANALYSIS

-- Average percentage per subject
SELECT subject, ROUND(AVG(percentage),2) AS avg_percentage
FROM student_results
GROUP BY subject
ORDER BY avg_percentage DESC;

-- Top performing students (overall average)
SELECT student_id, student_name,
ROUND(AVG(percentage),2) AS overall_percentage
FROM student_results
GROUP BY student_id, student_name
ORDER BY overall_percentage DESC;

-- Students who failed in any subject
SELECT DISTINCT student_id, student_name
FROM student_results
WHERE result_status = 'Fail';

-- Grade distribution
SELECT grade, COUNT(*) AS count
FROM student_results
GROUP BY grade
ORDER BY grade;

-- Class-wise average performance
SELECT class, ROUND(AVG(percentage),2) AS class_avg
FROM student_results
GROUP BY class;

-- 5️⃣ INSIGHTFUL QUERIES

-- Subject-wise pass percentage
SELECT subject,
ROUND(
    (SUM(CASE WHEN result_status = 'Pass' THEN 1 ELSE 0 END) * 100.0) / COUNT(*),
2) AS pass_percentage
FROM student_results
GROUP BY subject;

-- Identify students needing improvement (avg < 60%)
SELECT student_id, student_name,
ROUND(AVG(percentage),2) AS avg_percentage
FROM student_results
GROUP BY student_id, student_name
HAVING AVG(percentage) < 60;

-- Highest scorer in each subject
SELECT subject, student_name, MAX(marks_obtained) AS highest_marks
FROM student_results
GROUP BY subject, student_name
ORDER BY subject;

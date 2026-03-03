-- Execute each commands separately
DROP DATABASE if EXISTS sql_course;
-- Execute each commands separately
CREATE DATABASE sql_course;

-- Database exploration: sql_course
SELECT *
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME IN ('job_postings_fact', 'skills_dim', 'skills_job_dim', 'company_dim')
ORDER BY TABLE_NAME, ORDINAL_POSITION;
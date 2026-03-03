SELECT
    skills,
    ROUND (AVG (salary_year_avg), 0) AS avg_salary
FROM 
    job_postings_fact AS jf
INNER JOIN
    skills_job_dim AS jd
ON
    jf.job_id = jd.job_id
INNER JOIN
    skills_dim AS sd
ON
    jd.skill_id = sd.skill_id
WHERE
    salary_year_avg IS NOT NULL 
    AND job_title_short = 'Data Analyst'
    AND job_work_from_home = TRUE
GROUP BY
    skills
ORDER BY
    avg_salary DESC
LIMIT 25;
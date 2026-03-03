SELECT
    skills,
    COUNT (jd.job_id) AS skill_count
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
    job_title_short = 'Data Analyst' 
    AND job_work_from_home = TRUE
GROUP BY
    skills
ORDER BY
    skill_count DESC
LIMIT 5;
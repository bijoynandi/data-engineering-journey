WITH skills_demand AS (
    SELECT
        sd.skill_id,
        sd.skills,
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
        AND salary_year_avg IS NOT NULL
    GROUP BY
        sd.skill_id,
        sd.skills
),

    avg_salary AS (
    SELECT
        sd.skill_id,
        sd.skills,
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
        sd.skill_id,
        sd.skills
)

SELECT
    sdm.skill_id,
    sdm.skills,
    sdm.skill_count,
    avg.avg_salary
FROM
    skills_demand AS sdm
INNER JOIN
    avg_salary AS avg
ON
    sdm.skill_id = avg.skill_id
WHERE
    sdm.skill_count > 10
    AND avg.avg_salary > 50000
ORDER BY
    avg.avg_salary DESC,
    sdm.skill_count DESC    
LIMIT 25;


-- rewriting the same query more concisely

SELECT
    sd.skill_id,
    sd.skills,
    COUNT (jd.job_id) AS skill_count,
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
    job_title_short = 'Data Analyst'
    AND salary_year_avg IS NOT NULL
    AND job_work_from_home = TRUE
GROUP BY
    sd.skill_id,
    sd.skills
HAVING
    COUNT (jd.job_id) > 10
    AND AVG (salary_year_avg) > 50000
ORDER BY
    avg_salary DESC,
    skill_count DESC
LIMIT 25;
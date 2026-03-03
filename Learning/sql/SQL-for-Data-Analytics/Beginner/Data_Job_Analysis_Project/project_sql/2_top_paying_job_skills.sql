WITH top_paying_jobs AS (
    SELECT
        job_id,
        job_title,
        name AS company_name,
        salary_year_avg
    FROM
        job_postings_fact AS j
    INNER JOIN
        company_dim AS c
    ON
        j.company_id = c.company_id
    WHERE
        job_title_short = 'Data Analyst' 
        AND job_location = 'Anywhere' 
        AND salary_year_avg IS NOT NULL
    ORDER BY
        salary_year_avg DESC
    LIMIT 10
)

SELECT
    top.*,
    skills
FROM 
    top_paying_jobs AS top
INNER JOIN
    skills_job_dim AS sd
ON
    top.job_id = sd.job_id
INNER JOIN
    skills_dim AS s
ON
    sd.skill_id = s.skill_id
ORDER BY
    salary_year_avg DESC;
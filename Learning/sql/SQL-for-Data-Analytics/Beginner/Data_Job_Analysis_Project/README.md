# Data Analyst Job Market Insights: Skills & Salaries

## Overview

This project explores the data analyst job market, identifying top-paying roles, in-demand skills, and optimal learning paths. SQL queries analyzed job postings to extract key insights.

SQL queries: [project_sql folder](/project_sql/)

### Key Questions

1.  What are the top-paying data analyst jobs?
2.  What skills are required for top-paying jobs?
3.  What skills are most in demand?
4.  Which skills correlate with higher salaries?
5.  What are the optimal skills to learn?

## Tools

*   **SQL:** Data querying and analysis.
*   **PostgreSQL:** Database management.
*   **DataGrip:** IDE for SQL.
*   **Git & GitHub:** Version control and collaboration.

## Analysis

### 1. Top-Paying Data Analyst Jobs

Identified top 10 jobs with the highest salaries.

```sql
SELECT
    job_id,
    job_title,
    name AS company_name,
    job_location,
    job_schedule_type,
    salary_year_avg,
    job_posted_date :: DATE
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
LIMIT 10;
```

*   Salaries: \$184,000 to \$650,000.
*   Employers: SmartAsset, Meta, AT&T, among others.
*   Roles: Data Analyst to Director of Analytics.

### 2. Skills for Top-Paying Jobs

Identified key skills associated with top-paying jobs.

```sql
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
```


*   SQL (8), Python (7), Tableau (6).

### 3. In-Demand Skills

Identified skills most frequently requested in job postings.

```sql
SELECT
    skills,
    COUNT ( jd.job_id ) AS skill_count
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
```


*   SQL (7291), Excel (4611), Python (4330), Tableau (3745), Power BI (2609).

### 4. Skills Based on Salary

Identified skills correlated with higher average salaries.

```sql
SELECT
    skills,
    ROUND ( AVG (  salary_year_avg ), 0 ) AS avg_salary
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
```

*   Top Skills: PySpark (\$208,172), Bitbucket (\$189,155), Couchbase (\$160,515).

### 5. Optimal Skills to Learn

Identified skills with high demand and high average salaries.

```sql
SELECT
    sd.skill_id,
    sd.skills,
    COUNT ( jd.job_id ) AS skill_count,
    ROUND ( AVG (  salary_year_avg ), 0 ) AS avg_salary
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
    COUNT ( jd.job_id ) > 10
    AND AVG (  salary_year_avg ) > 50000
ORDER BY
    avg_salary DESC,
    skill_count DESC
LIMIT 25;
```

*   Top Skills: Go (\$115,320), Confluence (\$114,210), Hadoop (\$113,193).

## Insights

1.  **High Earning Potential:** Remote data analyst roles offer salaries up to \$650,000.
2.  **SQL is Essential:** High-paying jobs require strong SQL skills.
3.  **Demand for Foundational Skills:** SQL and Excel are highly demanded.
4.  **Specialized Skills Command Higher Pay:** Skills like SVN and Solidity correlate with top salaries.
5.  **Optimal Skills:** SQL is optimal for high demand and salary.

## Conclusion

This project enhanced SQL skills and provided insights into the data analyst job market. Aspiring analysts can prioritize skill development based on demand and salary trends.

## Acknowledgement

I would like to express my sincere gratitude to [Luke Barousse](https://github.com/lukebarousse) for providing the guidance and resources that made this project possible. The expertise was invaluable in helping me analyze the dataset and derive actionable insights. The guidance and support were instrumental in the success of this project. Thank you, Luke, for your invaluable contributions!

## Contact

If you have any questions or would like to connect, feel free to reach out to me at [bijoynandi@proton.me](mailto:bijoynandi@proton.me). I'm always open to discussions and collaborations. Happy querying!

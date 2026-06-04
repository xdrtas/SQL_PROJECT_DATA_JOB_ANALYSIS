WITH remote_jobs_skills AS (
    SELECT
        skill_id,
        COUNT(*) AS skill_count
    FROM
        skills_job_dim as sjd
    INNER JOIN
        job_postings_fact AS jpf ON sjd.job_id = jpf.job_id
    WHERE
        jpf.job_work_from_home = TRUE AND jpf.job_title_short = 'Data Analyst'
    GROUP BY
        skill_id
)

SELECT
    sk.skill_id,
    sk.skills as skill_name
FROM
    remote_jobs_skills rjs
INNER JOIN
    skills_dim as sk ON rjs.skill_id = sk.skill_id
ORDER BY
    rjs.skill_count DESC
LIMIT 5;
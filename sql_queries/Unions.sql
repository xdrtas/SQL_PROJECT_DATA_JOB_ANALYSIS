SELECT
    job_title_short,
    company_id,
    job_location
FROM
    january_job_postings as january_job

UNION

SELECT
    job_title_short,
    company_id,
    job_location
FROM
    february_job_postings as february_job

UNION

SELECT
    job_title_short,
    company_id,
    job_location
FROM
    march_job_postings as march_job;
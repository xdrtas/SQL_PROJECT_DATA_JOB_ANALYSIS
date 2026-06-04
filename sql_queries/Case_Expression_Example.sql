select 
    count(job_id) as number_of_jobs,
    case 
        when job_location = 'Anywhere' then 'Remote'
        when job_location = 'New York, NY' THEN 'Local'
        else 'Onsite'
    end as job_location_category
from 
    job_postings_fact
where 
    job_title_short = 'Data Analyst'
group by 
    job_location_category
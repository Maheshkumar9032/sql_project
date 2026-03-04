---
/*
Question: What are the top-paying data analyst jobs?
- Identify the top 10 highest-paying Data Analyst roles that are available remotely.
- Focuses on job postings with specified salaries (remove nulls).
- Why? Highlight top-paying opportunities for Data Analysts, offering insights into employment trends.
*/

select
    job_title,
    job_schedule_type,
    job_location,
    salary_year_avg,
    company_dim.name,
    job_via
from job_postings_fact
left JOIN company_dim on company_dim.company_id = job_postings_fact.company_id
where 
    job_title_short = 'Data Analyst' and 
    job_location = 'Anywhere' AND
    salary_year_avg is not null
order by
    salary_year_avg desc
limit 10;        

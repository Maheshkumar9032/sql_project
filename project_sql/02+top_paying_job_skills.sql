/*
Question: What skills are required for the top-paying data analyst jobs?
- Use the top 10 highest-paying Data Analyst jobs from first query
- Add the specific skills required for these roles
- Why? It provides a detailed look at which high-paying jobs demand certain skills,
  helping job seekers understand which skills to develop that align with top salaries
*/

with top_paying_jobs_table as 
(select
    job_title,
    job_id,
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
limit 10)

SELECT 
    top_paying_jobs_table.*,
    skills
from top_paying_jobs_table
Inner join skills_job_dim on
    skills_job_dim.job_id = top_paying_jobs_table.job_id
inner join skills_dim on
    skills_dim.skill_id = skills_job_dim.skill_id
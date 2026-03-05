/*
Answer: What are the top skills based on salary?
- Look at the average salary associated with each skill for Data Analyst positions
- Focuses on roles with specified salaries, regardless of location
- Why? It reveals how different skills impact salary levels for Data Analysts and helps identify the most financially rewarding skills to acquire or improve
*/


select 
    skills,
    round(avg (salary_year_avg),0) as avg_sal
from job_postings_fact
LEFT JOIN  skills_job_dim on
    skills_job_dim.job_id = job_postings_fact.job_id
left join skills_dim on
    skills_dim.skill_id = skills_job_dim.skill_id
where 
    job_title_short = 'Data Analyst' and salary_year_avg is not null
group by 
    skills
order by 
    avg_sal Desc    
limit 25            
        
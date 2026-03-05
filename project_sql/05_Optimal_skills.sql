/*
Answer: What are the most optimal skills to learn (aka it's in high demand and a high-paying skill)?
- Identify skills in high demand and associated with high average salaries for Data Analyst roles
- Concentrates on remote positions with specified salaries
- Why? Targets skills that offer job security (high demand) and financial benefits (high salaries),
  offering strategic insights for career development in data analysis
*/

SELECT
    skills_job_dim.skill_id,
    skills_dim.skills,
    avg(salary_year_avg) as Avg_sal,
    count(skills_job_dim.skill_id) as skill_demand
from job_postings_fact
inner join skills_job_dim ON
    skills_job_dim.job_id = job_postings_fact.job_id
INNER JOIN skills_dim ON
    skills_dim.skill_id = skills_job_dim.skill_id
where
    job_title_short = 'Data Analyst' and job_location = 'Anywhere' 
    and salary_year_avg is not null
GROUP BY
    skills_job_dim.skill_id,
    skills_dim.skills
HAVING 
    count(skills_job_dim.skill_id) > 10
ORDER BY
    Avg_sal DESC,
    skill_demand DESC
limit 20;    

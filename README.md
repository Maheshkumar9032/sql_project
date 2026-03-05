# Introduction
📊 Dive into the data job market! Focusing on data analyst roles, this project explores 💰 top-paying jobs, 🔥 in-demand skills, and 📈 where high demand meets high salary in data analytics.

🔍 SQL queries? Check them out here : [project_sql](/project_sql/)

# Background
Background

I began learning SQL as part of my journey into data analytics, following Luke Barousse’s SQL learning path. While building my skills, I worked on a data jobs dataset to practice writing queries and exploring real-world data.

This project analyzes the data job market by examining job postings, required skills, and salary trends for roles such as Data Analysts. Through SQL queries, I explored questions like which skills are most in demand, which skills are associated with higher salaries, and what skills provide the best balance between demand and pay.

The goal of this project was not only to practice SQL concepts such as joins, aggregations, and filtering, but also to extract meaningful insights from real job market data.

## The questions I wanted to answer through my SQL queries were:

1.What are the top-paying data analyst jobs?

2.hat skills are required for these top-paying jobs?

3.What skills are most in demand for data analysts?

4.Which skills are associated with higher salaries?

5.What are the most optimal skills to learn?

# Tools I used
For my deep dive into the data analyst job market, I harnessed the power of several key tools:

- **SQL :** The backbone of my analysis, allowing me to query the database and unearth critical insights.

- **PostgreSQL :** The chosen database management system, ideal for handling the job posting data.

- **Visual Studio Code :** My go-to for database management and executing SQL queries.

- **Git & GitHub :** Essential for version control and sharing my SQL scripts and analysis, ensuring collaboration and project tracking.
# The Analysis
Each query for this project aimed at investigating specific aspects of the data analyst job market. Here’s how I approached each question:

1. Top Paying Data Analyst Jobs
To identify the highest-paying roles, I filtered data analyst positions by average yearly salary and location, focusing on remote jobs. This query highlights the high paying opportunities in the field.

```
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
```
## Top Paying Data Analyst Jobs]
![Top Paying Data Analyst Jobs](assests\output.png)
## The breakdown of the top data analyst jobs
*The analysis of top-paying Data Analyst roles shows that the highest salaries are associated with senior and leadership positions such as Principal Data Analyst and Director of Analytics. Remote positions also remain highly competitive, with many roles offering salaries above $180K. The dataset also highlights how specialization and leadership responsibilities significantly impact earning potential in data analytics careers.*
# What I learned
I learned

# Conclusions

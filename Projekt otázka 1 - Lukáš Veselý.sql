SELECT * 
FROM t_lukas_vesely_project_sql_primary_final;

CREATE OR REPLACE VIEW salary_industry AS
SELECT 
	DISTINCT id_salary_jobs, 
	year_salary,
	value_salary,
	industry_branch_code_salary,
	industry_name_salary 
FROM t_lukas_vesely_project_sql_primary_final
ORDER BY industry_branch_code_salary;


SELECT 
	avg(value_salary) AS average_salary,
	year_salary,
	industry_branch_code_salary,
	industry_name_salary 
FROM salary_industry
GROUP BY year_salary,
	industry_branch_code_salary,
	industry_name_salary;

SELECT *
FROM salary_industry;


SELECT 
	average_salary,
	year_salary
FROM (SELECT 
	avg(value_salary) AS average_salary,
	year_salary,
	industry_branch_code_salary,
	industry_name_salary 
FROM salary_industry
GROUP BY year_salary,
	industry_branch_code_salary,
	industry_name_salary)
WHERE industry_branch_code_salary = 'A'
ORDER BY average_salary;



SELECT 
	average_salary,
	year_salary,
	industry_branch_code_salary
FROM (SELECT 
	avg(value_salary) AS average_salary,
	year_salary,
	industry_branch_code_salary,
	industry_name_salary 
FROM salary_industry
GROUP BY year_salary,
	industry_branch_code_salary,
	industry_name_salary)
WHERE industry_branch_code_salary = 'A'
ORDER BY average_salary;
	

-- podrobné měření v Excelu

SELECT 
	average_salary,
	year_salary,
	industry_branch_code_salary
FROM (SELECT 
	avg(value_salary) AS average_salary,
	year_salary,
	industry_branch_code_salary,
	industry_name_salary 
FROM salary_industry
GROUP BY year_salary,
	industry_branch_code_salary,
	industry_name_salary)
WHERE industry_branch_code_salary = 'A'
ORDER BY year_salary;

SELECT 
	average_salary,
	year_salary,
	industry_branch_code_salary
FROM (SELECT 
	avg(value_salary) AS average_salary,
	year_salary,
	industry_branch_code_salary,
	industry_name_salary 
FROM salary_industry
GROUP BY year_salary,
	industry_branch_code_salary,
	industry_name_salary)
WHERE industry_branch_code_salary = 'B'
ORDER BY year_salary;

SELECT 
	average_salary,
	year_salary,
	industry_branch_code_salary
FROM (SELECT 
	avg(value_salary) AS average_salary,
	year_salary,
	industry_branch_code_salary,
	industry_name_salary 
FROM salary_industry
GROUP BY year_salary,
	industry_branch_code_salary,
	industry_name_salary)
WHERE industry_branch_code_salary = 'C'
ORDER BY year_salary;

SELECT 
	average_salary,
	year_salary,
	industry_branch_code_salary
FROM (SELECT 
	avg(value_salary) AS average_salary,
	year_salary,
	industry_branch_code_salary,
	industry_name_salary 
FROM salary_industry
GROUP BY year_salary,
	industry_branch_code_salary,
	industry_name_salary)
WHERE industry_branch_code_salary = 'D'
ORDER BY year_salary;

SELECT 
	average_salary,
	year_salary,
	industry_branch_code_salary
FROM (SELECT 
	avg(value_salary) AS average_salary,
	year_salary,
	industry_branch_code_salary,
	industry_name_salary 
FROM salary_industry
GROUP BY year_salary,
	industry_branch_code_salary,
	industry_name_salary)
WHERE industry_branch_code_salary = 'E'
ORDER BY year_salary;

SELECT 
	average_salary,
	year_salary,
	industry_branch_code_salary
FROM (SELECT 
	avg(value_salary) AS average_salary,
	year_salary,
	industry_branch_code_salary,
	industry_name_salary 
FROM salary_industry
GROUP BY year_salary,
	industry_branch_code_salary,
	industry_name_salary)
WHERE industry_branch_code_salary = 'F'
ORDER BY year_salary;

SELECT 
	average_salary,
	year_salary,
	industry_branch_code_salary
FROM (SELECT 
	avg(value_salary) AS average_salary,
	year_salary,
	industry_branch_code_salary,
	industry_name_salary 
FROM salary_industry
GROUP BY year_salary,
	industry_branch_code_salary,
	industry_name_salary)
WHERE industry_branch_code_salary = 'G'
ORDER BY year_salary;

SELECT 
	average_salary,
	year_salary,
	industry_branch_code_salary
FROM (SELECT 
	avg(value_salary) AS average_salary,
	year_salary,
	industry_branch_code_salary,
	industry_name_salary 
FROM salary_industry
GROUP BY year_salary,
	industry_branch_code_salary,
	industry_name_salary)
WHERE industry_branch_code_salary = 'H'
ORDER BY year_salary;

SELECT 
	average_salary,
	year_salary,
	industry_branch_code_salary
FROM (SELECT 
	avg(value_salary) AS average_salary,
	year_salary,
	industry_branch_code_salary,
	industry_name_salary 
FROM salary_industry
GROUP BY year_salary,
	industry_branch_code_salary,
	industry_name_salary)
WHERE industry_branch_code_salary = 'I'
ORDER BY year_salary;

SELECT 
	average_salary,
	year_salary,
	industry_branch_code_salary
FROM (SELECT 
	avg(value_salary) AS average_salary,
	year_salary,
	industry_branch_code_salary,
	industry_name_salary 
FROM salary_industry
GROUP BY year_salary,
	industry_branch_code_salary,
	industry_name_salary)
WHERE industry_branch_code_salary = 'J'
ORDER BY year_salary;

SELECT 
	average_salary,
	year_salary,
	industry_branch_code_salary
FROM (SELECT 
	avg(value_salary) AS average_salary,
	year_salary,
	industry_branch_code_salary,
	industry_name_salary 
FROM salary_industry
GROUP BY year_salary,
	industry_branch_code_salary,
	industry_name_salary)
WHERE industry_branch_code_salary = 'K'
ORDER BY year_salary;

SELECT 
	average_salary,
	year_salary,
	industry_branch_code_salary
FROM (SELECT 
	avg(value_salary) AS average_salary,
	year_salary,
	industry_branch_code_salary,
	industry_name_salary 
FROM salary_industry
GROUP BY year_salary,
	industry_branch_code_salary,
	industry_name_salary)
WHERE industry_branch_code_salary = 'L'
ORDER BY year_salary;

SELECT 
	average_salary,
	year_salary,
	industry_branch_code_salary
FROM (SELECT 
	avg(value_salary) AS average_salary,
	year_salary,
	industry_branch_code_salary,
	industry_name_salary 
FROM salary_industry
GROUP BY year_salary,
	industry_branch_code_salary,
	industry_name_salary)
WHERE industry_branch_code_salary = 'M'
ORDER BY year_salary;

SELECT 
	average_salary,
	year_salary,
	industry_branch_code_salary
FROM (SELECT 
	avg(value_salary) AS average_salary,
	year_salary,
	industry_branch_code_salary,
	industry_name_salary 
FROM salary_industry
GROUP BY year_salary,
	industry_branch_code_salary,
	industry_name_salary)
WHERE industry_branch_code_salary = 'N'
ORDER BY year_salary;

SELECT 
	average_salary,
	year_salary,
	industry_branch_code_salary
FROM (SELECT 
	avg(value_salary) AS average_salary,
	year_salary,
	industry_branch_code_salary,
	industry_name_salary 
FROM salary_industry
GROUP BY year_salary,
	industry_branch_code_salary,
	industry_name_salary)
WHERE industry_branch_code_salary = 'O'
ORDER BY year_salary;

SELECT 
	average_salary,
	year_salary,
	industry_branch_code_salary
FROM (SELECT 
	avg(value_salary) AS average_salary,
	year_salary,
	industry_branch_code_salary,
	industry_name_salary 
FROM salary_industry
GROUP BY year_salary,
	industry_branch_code_salary,
	industry_name_salary)
WHERE industry_branch_code_salary = 'P'
ORDER BY year_salary;

SELECT 
	average_salary,
	year_salary,
	industry_branch_code_salary
FROM (SELECT 
	avg(value_salary) AS average_salary,
	year_salary,
	industry_branch_code_salary,
	industry_name_salary 
FROM salary_industry
GROUP BY year_salary,
	industry_branch_code_salary,
	industry_name_salary)
WHERE industry_branch_code_salary = 'Q'
ORDER BY year_salary;

SELECT 
	average_salary,
	year_salary,
	industry_branch_code_salary
FROM (SELECT 
	avg(value_salary) AS average_salary,
	year_salary,
	industry_branch_code_salary,
	industry_name_salary 
FROM salary_industry
GROUP BY year_salary,
	industry_branch_code_salary,
	industry_name_salary)
WHERE industry_branch_code_salary = 'R'
ORDER BY year_salary;

SELECT 
	average_salary,
	year_salary,
	industry_branch_code_salary
FROM (SELECT 
	avg(value_salary) AS average_salary,
	year_salary,
	industry_branch_code_salary,
	industry_name_salary 
FROM salary_industry
GROUP BY year_salary,
	industry_branch_code_salary,
	industry_name_salary)
WHERE industry_branch_code_salary = 'S'
ORDER BY year_salary;






















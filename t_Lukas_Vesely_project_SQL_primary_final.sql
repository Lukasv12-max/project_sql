SELECT *
FROM czechia_payroll cp;

SELECT *
FROM czechia_payroll_calculation cpc;

SELECT *
FROM czechia_payroll_industry_branch cpib;

SELECT *
FROM czechia_payroll_unit cpu;

SELECT *
FROM czechia_payroll_value_type cpvt;

SELECT *
FROM czechia_price cpr;

SELECT *
FROM czechia_price_category cprc;

SELECT *
FROM czechia_region cr;

SELECT *
FROM czechia_district cd;

SELECT *
FROM countries c;

SELECT *
FROM economies e;

------------------------------------------------------------------------------------------------------
SELECT 
	cp.id AS id_people_jobs,
	cp.value AS value_thousands,
	cp.industry_branch_code AS industry_branch_code_people,
	cpib.name AS industry_name_people,
	cp.payroll_year AS year_people	
FROM czechia_payroll cp 
LEFT JOIN czechia_payroll_industry_branch cpib
	ON cp.industry_branch_code = cpib.code
WHERE cp.value IS NOT NULL
	AND cp.unit_code = 80403;



SELECT 
	cp.id AS id_salary_jobs,
	cp.value AS value_salary,
	cp.industry_branch_code AS industry_branch_code_salary,
	cpib.name AS industry_name_salary,
	cp.payroll_year AS year_salary
FROM czechia_payroll cp 
LEFT JOIN czechia_payroll_industry_branch cpib
	ON cp.industry_branch_code = cpib.code
WHERE cp.value IS NOT NULL
	AND cp.unit_code = 200
	AND cp.value_type_code = 5958;

	
-- Chyba v tabulce cpu, jelikož hodnoty jsou obrácené pro Kč a tisíce a potraviny

SELECT 	
	cpr.id AS id_food,
	cpr.value AS price_food,
	cpr.category_code AS category_code_food,
	cprc.name AS name_food,
	date_part('year', cpr.date_from) AS year_food,
	cpr.region_code AS region_code_food,
	cr.name AS region_food
FROM czechia_price cpr
LEFT JOIN czechia_price_category cprc 
	ON cprc.code = cpr.category_code
LEFT JOIN czechia_region cr 
	ON cr.code = cpr.region_code 
WHERE cpr.region_code IS NOT NULL;


SELECT 
	cp.id AS id_salary_jobs,
	cp.value AS value_salary,
	cp.industry_branch_code AS industry_branch_code_salary,
	cpib.name AS industry_name_salary,
	cp.payroll_year AS year_salary
FROM czechia_payroll cp 
LEFT JOIN czechia_payroll_industry_branch cpib
	ON cp.industry_branch_code = cpib.code
WHERE cp.value IS NOT NULL
	AND cp.unit_code = 200
	AND cp.value_type_code = 5958;

SELECT 
	cp.id AS id_people_jobs,
	cp.value AS value_thousands,
	cp.industry_branch_code AS industry_branch_code_people,
	cpib.name AS industry_name_people,
	cp.payroll_year AS year_people	
FROM czechia_payroll cp 
LEFT JOIN czechia_payroll_industry_branch cpib
	ON cp.industry_branch_code = cpib.code
WHERE cp.value IS NOT NULL
	AND cp.unit_code = 80403;

SELECT 	
	cpr.id AS id_food,
	cpr.value AS price_food,
	cpr.category_code AS category_code_food,
	cprc.name AS name_food,
	date_part('year', cpr.date_from) AS year_food,
	cpr.region_code AS region_code_food,                       
	cr.name AS region_food
FROM czechia_price cpr
LEFT JOIN czechia_price_category cprc 
	ON cprc.code = cpr.category_code
LEFT JOIN czechia_region cr 
	ON cr.code = cpr.region_code 
WHERE cpr.region_code IS NOT NULL;


SELECT 
	date_part('year', cpr.date_from) AS year_food_from,
	date_part('year', cpr.date_to) AS year_food_to,
	CASE WHEN date_part('year', cpr.date_from) != 	date_part('year', cpr.date_to) THEN NULL
	ELSE 1
	END AS from_is_to
FROM czechia_price cpr;

SELECT COUNT(from_is_to)
FROM (SELECT 
	date_part('year', cpr.date_from) AS year_food_from,
	date_part('year', cpr.date_to) AS year_food_to,
	CASE WHEN date_part('year', cpr.date_from) != 	date_part('year', cpr.date_to) THEN NULL
	ELSE 1
	END AS from_is_to
FROM czechia_price cpr);



WITH jobs_salary AS (SELECT 
	cp.id AS id_salary_jobs,
	cp.value AS value_salary,
	cp.industry_branch_code AS industry_branch_code_salary,
	cpib.name AS industry_name_salary,
	cp.payroll_year AS year_salary
FROM czechia_payroll cp 
LEFT JOIN czechia_payroll_industry_branch cpib
	ON cp.industry_branch_code = cpib.code
WHERE cp.value IS NOT NULL
	AND cp.unit_code = 200
	AND cp.value_type_code = 5958
)
SELECT 
	cpr.id AS id_food,
	cpr.value AS price_food,
	cpr.category_code AS category_code_food,
	cprc.name AS name_food,
	date_part('year', cpr.date_from) AS year_food,
	cpr.region_code AS region_code_food,
	cr.name AS region_food
FROM czechia_price cpr
LEFT JOIN czechia_price_category cprc 
	ON cprc.code = cpr.category_code
LEFT JOIN czechia_region cr 
	ON cr.code = cpr.region_code 
WHERE cpr.region_code IS NOT NULL;

   


CREATE TABLE t_Lukas_Vesely_project_SQL_primary_final AS
WITH jobs_salary AS (
    SELECT 
        cp.id AS id_salary_jobs,
        cp.value AS value_salary,
        cp.industry_branch_code AS industry_branch_code_salary,
        cpib.name AS industry_name_salary,
        cp.payroll_year AS year_salary
    FROM czechia_payroll cp 
    LEFT JOIN czechia_payroll_industry_branch cpib
        ON cp.industry_branch_code = cpib.code
    WHERE cp.value IS NOT NULL
      AND cp.unit_code = 200
      AND cp.value_type_code = 5958
      AND cp.industry_branch_code IS NOT NULL
)
SELECT 
    jobs_salary.id_salary_jobs,
    jobs_salary.value_salary,
    jobs_salary.industry_branch_code_salary,
    jobs_salary.industry_name_salary,
    jobs_salary.year_salary,
    cpr.id AS id_food,
    cpr.value AS price_food,
    cpr.category_code AS category_code_food,
    cprc.name AS name_food,
    cpr.region_code AS region_code_food,
    cr.name AS region_food
FROM jobs_salary
RIGHT JOIN czechia_price cpr
    ON jobs_salary.year_salary = date_part('year', cpr.date_from) 
    AND cpr.region_code IS NOT NULL
LEFT JOIN czechia_price_category cprc 
    ON cprc.code = cpr.category_code
LEFT JOIN czechia_region cr 
    ON cr.code = cpr.region_code;

SELECT *
FROM t_lukas_vesely_project_sql_primary_final;
   
   
   
   
   
   
   
   
   
   
   
   
   
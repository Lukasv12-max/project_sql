SELECT *
FROM t_lukas_vesely_project_sql_primary_final;


SELECT 
	DISTINCT id_food, 
	year_salary,
	price_food,
	category_code_food,
	name_food,
	region_code_food,
	region_food 
FROM t_lukas_vesely_project_sql_primary_final
ORDER BY year_salary;


CREATE OR REPLACE VIEW food AS
	SELECT 
	DISTINCT id_food, 
	year_salary,
	price_food,
	category_code_food,
	name_food,
	region_code_food,
	region_food 
FROM t_lukas_vesely_project_sql_primary_final
ORDER BY year_salary;

SELECT *
FROM food;

SELECT *
FROM food 
WHERE category_code_food = 111301;

SELECT *
FROM food 
WHERE category_code_food = 114201;

SELECT 
	min(year_salary)
FROM (SELECT *
FROM food 
WHERE category_code_food = 111301); 

SELECT 
	max(year_salary)
FROM (SELECT *
FROM food 
WHERE category_code_food = 111301); 


SELECT 
	min(year_salary)
FROM (SELECT *
FROM food 
WHERE category_code_food = 114201); 


SELECT 
	max(year_salary)
FROM (SELECT *
FROM food 
WHERE category_code_food = 114201);



SELECT 
	year_salary,
	avg(price_food) AS average_price_bread_2006
FROM food 
WHERE category_code_food = 111301
	AND year_salary = 2006
GROUP BY year_salary;

SELECT 
	year_salary,
	avg(price_food) AS average_price_bread_2018
FROM food 
WHERE category_code_food = 111301
	AND year_salary = 2018
GROUP BY year_salary;

SELECT 
	year_salary,
	avg(price_food) AS average_price_milk_2006
FROM food 
WHERE category_code_food = 114201
	AND year_salary = 2006
GROUP BY year_salary;

SELECT 
	year_salary,
	avg(price_food) AS average_price_milk_2018
FROM food 
WHERE category_code_food = 114201
	AND year_salary = 2018
GROUP BY year_salary;




SELECT 
	max(year_salary)
FROM salary_industry;

SELECT 
	min(year_salary)
FROM salary_industry;


SELECT *
FROM salary_industry;

SELECT 
	year_salary,
	avg(value_salary) AS average_salary
FROM salary_industry
WHERE year_salary IN (2006, 2018)
GROUP BY year_salary;


WITH 
    average_salary_2006_and_2018 AS (
        SELECT 
            year_salary,
            AVG(value_salary) AS average_salary
        FROM salary_industry
        WHERE year_salary IN (2006, 2018)
        GROUP BY year_salary
    ),
    b6 AS (
        SELECT 
            year_salary,
            AVG(price_food) AS average_price_bread_2006
        FROM food 
        WHERE category_code_food = 111301
            AND year_salary = 2006
        GROUP BY year_salary
    ),
    b18 AS (
        SELECT 
            year_salary,
            AVG(price_food) AS average_price_bread_2018
        FROM food 
        WHERE category_code_food = 111301
            AND year_salary = 2018
        GROUP BY year_salary
    ),
    m6 AS (
        SELECT 
            year_salary,
            AVG(price_food) AS average_price_milk_2006
        FROM food 
        WHERE category_code_food = 114201
            AND year_salary = 2006
        GROUP BY year_salary
    ),
    m18 AS (
        SELECT 
            year_salary,
            AVG(price_food) AS average_price_milk_2018
        FROM food 
        WHERE category_code_food = 114201
            AND year_salary = 2018
        GROUP BY year_salary
    )
SELECT 
    as6.year_salary,
    as6.average_salary,
    b6.average_price_bread_2006,
    b18.average_price_bread_2018,
    m6.average_price_milk_2006,
    m18.average_price_milk_2018
FROM average_salary_2006_and_2018 as6
LEFT JOIN b6 ON b6.year_salary = as6.year_salary
LEFT JOIN b18 ON b18.year_salary = as6.year_salary
LEFT JOIN m6 ON m6.year_salary = as6.year_salary
LEFT JOIN m18 ON m18.year_salary = as6.year_salary;



WITH 
    average_salary_2006_and_2018 AS (
        SELECT 
            year_salary,
            AVG(value_salary) AS average_salary
        FROM salary_industry
        WHERE year_salary IN (2006, 2018)
        GROUP BY year_salary
    ),
    b6 AS (
        SELECT 
            year_salary,
            AVG(price_food) AS average_price_bread_2006
        FROM food 
        WHERE category_code_food = 111301
            AND year_salary = 2006
        GROUP BY year_salary
    ),
    b18 AS (
        SELECT 
            year_salary,
            AVG(price_food) AS average_price_bread_2018
        FROM food 
        WHERE category_code_food = 111301
            AND year_salary = 2018
        GROUP BY year_salary
    ),
    m6 AS (
        SELECT 
            year_salary,
            AVG(price_food) AS average_price_milk_2006
        FROM food 
        WHERE category_code_food = 114201
            AND year_salary = 2006
        GROUP BY year_salary
    ),
    m18 AS (
        SELECT 
            year_salary,
            AVG(price_food) AS average_price_milk_2018
        FROM food 
        WHERE category_code_food = 114201
            AND year_salary = 2018
        GROUP BY year_salary
    )
SELECT 
    as6.year_salary,
    as6.average_salary,
    b6.average_price_bread_2006,
    b18.average_price_bread_2018,
    m6.average_price_milk_2006,
    m18.average_price_milk_2018,
    CASE 
        WHEN b6.average_price_bread_2006 IS NOT NULL THEN as6.average_salary / b6.average_price_bread_2006
        ELSE 0
    END AS salary_per_bread_2006,
    CASE 
        WHEN b18.average_price_bread_2018 IS NOT NULL THEN as6.average_salary / b18.average_price_bread_2018
        ELSE 0
    END AS salary_per_bread_2018,
    CASE 
        WHEN m6.average_price_milk_2006 IS NOT NULL THEN as6.average_salary / m6.average_price_milk_2006
        ELSE 0
    END AS salary_per_milk_2006,
    CASE 
        WHEN m18.average_price_milk_2018 IS NOT NULL THEN as6.average_salary / m18.average_price_milk_2018
        ELSE 0
    END AS salary_per_milk_2018
FROM average_salary_2006_and_2018 as6
LEFT JOIN b6 ON b6.year_salary = as6.year_salary
LEFT JOIN b18 ON b18.year_salary = as6.year_salary
LEFT JOIN m6 ON m6.year_salary = as6.year_salary
LEFT JOIN m18 ON m18.year_salary = as6.year_salary;



WITH 
    average_salary_2006_and_2018 AS (
        SELECT 
            year_salary,
            AVG(value_salary) AS average_salary
        FROM salary_industry
        WHERE year_salary IN (2006, 2018)
        GROUP BY year_salary
    ),
    b6_18 AS (
        SELECT 
            year_salary,
            AVG(price_food) AS average_price_bread
        FROM food 
        WHERE category_code_food = 111301
            AND year_salary IN (2006, 2018)
        GROUP BY year_salary
    ),
    m6_18 AS (
        SELECT 
            year_salary,
            AVG(price_food) AS average_price_milk
        FROM food 
        WHERE category_code_food = 114201
            AND year_salary IN (2006, 2018)
        GROUP BY year_salary
    )
SELECT 
    as6.year_salary,
    as6.average_salary,
    b6_18.average_price_bread,
    m6_18.average_price_milk
FROM average_salary_2006_and_2018 as6
LEFT JOIN b6_18 ON b6_18.year_salary = as6.year_salary
LEFT JOIN m6_18 ON m6_18.year_salary = as6.year_salary;


WITH 
    average_salary_2006_and_2018 AS (
        SELECT 
            year_salary,
            AVG(value_salary) AS average_salary
        FROM salary_industry
        WHERE year_salary IN (2006, 2018)
        GROUP BY year_salary
    ),
    b6_18 AS (
        SELECT 
            year_salary,
            AVG(price_food) AS average_price_bread
        FROM food 
        WHERE category_code_food = 111301
            AND year_salary IN (2006, 2018)
        GROUP BY year_salary
    ),
    m6_18 AS (
        SELECT 
            year_salary,
            AVG(price_food) AS average_price_milk
        FROM food 
        WHERE category_code_food = 114201
            AND year_salary IN (2006, 2018)
        GROUP BY year_salary
    )
SELECT 
    as6.year_salary,
    as6.average_salary,
    b6_18.average_price_bread,
    m6_18.average_price_milk,
    CASE 
        WHEN b6_18.average_price_bread > 0 THEN as6.average_salary / b6_18.average_price_bread
        ELSE 0
    END AS salary_per_bread,
    CASE 
        WHEN m6_18.average_price_milk > 0 THEN as6.average_salary / m6_18.average_price_milk
        ELSE 0
    END AS salary_per_milk
FROM average_salary_2006_and_2018 as6
LEFT JOIN b6_18 ON b6_18.year_salary = as6.year_salary
LEFT JOIN m6_18 ON m6_18.year_salary = as6.year_salary;

















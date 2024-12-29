SELECT *
FROM economies
WHERE gdp IS NOT NULL
	AND "year" BETWEEN 2006 AND 2018
	AND country = 'Czech Republic'
ORDER BY "year",
country;


WITH gdp_countries AS (
    SELECT 
        country,
        "year",
        gdp,
        gini,
        population 
    FROM economies 
    WHERE gdp IS NOT NULL
        AND "year" BETWEEN 2006 AND 2018
)
SELECT
    gc.country,
    gc."year",
    gc.gdp,
    gc.gini,
    gc.population,
    c.continent
FROM gdp_countries gc
JOIN countries c
ON gc.country = c.country
ORDER BY "year",
	country;


CREATE TABLE t_lukas_vesely_project_SQL_secondary_final AS (WITH gdp_countries AS (
    SELECT 
        country,
        "year",
        gdp,
        gini,
        population 
    FROM economies 
    WHERE gdp IS NOT NULL
        AND "year" BETWEEN 2006 AND 2018
)
SELECT
    gc.country,
    gc."year",
    gc.gdp,
    gc.gini,
    gc.population,
    c.continent
FROM gdp_countries gc
JOIN countries c
ON gc.country = c.country
WHERE continent = 'Europe'
ORDER BY "year",
	country);

SELECT *
FROM t_lukas_vesely_project_sql_secondary_final;



























SELECT *
FROM food_differences;

SELECT 	
	avg(difference_2007_and_2006) AS all_categorie_difference_2007_and_2006,
	avg(difference_2008_and_2007) AS all_categorie_difference_2008_and_2007,
	avg(difference_2009_and_2008) AS all_categorie_difference_2009_and_2008,
	avg(difference_2010_and_2009) AS all_categorie_difference_2010_and_2009,
	avg(difference_2011_and_2010) AS all_categorie_difference_2011_and_2010,
	avg(difference_2012_and_2011) AS all_categorie_difference_2012_and_2011,
	avg(difference_2013_and_2012) AS all_categorie_difference_2013_and_2012,
	avg(difference_2014_and_2013) AS all_categorie_difference_2014_and_2013,
	avg(difference_2015_and_2014) AS all_categorie_difference_2015_and_2014,
	avg(difference_2016_and_2015) AS all_categorie_difference_2016_and_2015,
	avg(difference_2017_and_2016) AS all_categorie_difference_2017_and_2016,
	avg(difference_2018_and_2017) AS all_categorie_difference_2018_and_2017
FROM food_differences;

SELECT *
FROM salary_industry;

SELECT 
	year_salary AS year_salary_2006,
	industry_branch_code_salary,
	industry_name_salary,
	avg(value_salary) AS average_salary_2006
FROM salary_industry
WHERE year_salary = 2006
GROUP BY year_salary,
	industry_branch_code_salary,
	industry_name_salary
ORDER BY industry_branch_code_salary;

SELECT 
	year_salary AS year_salary_2007,
	industry_branch_code_salary,
	industry_name_salary,
	avg(value_salary) AS average_salary_2007
FROM salary_industry
WHERE year_salary = 2007
GROUP BY year_salary,
	industry_branch_code_salary,
	industry_name_salary
ORDER BY industry_branch_code_salary;

SELECT 
	year_salary AS year_salary_2008,
	industry_branch_code_salary,
	industry_name_salary,
	avg(value_salary) AS average_salary_2008
FROM salary_industry
WHERE year_salary = 2008
GROUP BY year_salary,
	industry_branch_code_salary,
	industry_name_salary
ORDER BY industry_branch_code_salary;

SELECT 
	year_salary AS year_salary_2009,
	industry_branch_code_salary,
	industry_name_salary,
	avg(value_salary) AS average_salary_2009
FROM salary_industry
WHERE year_salary = 2009
GROUP BY year_salary,
	industry_branch_code_salary,
	industry_name_salary
ORDER BY industry_branch_code_salary;

SELECT 
	year_salary AS year_salary_2010,
	industry_branch_code_salary,
	industry_name_salary,
	avg(value_salary) AS average_salary_2010
FROM salary_industry
WHERE year_salary = 2010
GROUP BY year_salary,
	industry_branch_code_salary,
	industry_name_salary
ORDER BY industry_branch_code_salary;

SELECT 
	year_salary AS year_salary_2011,
	industry_branch_code_salary,
	industry_name_salary,
	avg(value_salary) AS average_salary_2011
FROM salary_industry
WHERE year_salary = 2011
GROUP BY year_salary,
	industry_branch_code_salary,
	industry_name_salary
ORDER BY industry_branch_code_salary;

SELECT 
	year_salary AS year_salary_2012,
	industry_branch_code_salary,
	industry_name_salary,
	avg(value_salary) AS average_salary_2012
FROM salary_industry
WHERE year_salary = 2012
GROUP BY year_salary,
	industry_branch_code_salary,
	industry_name_salary
ORDER BY industry_branch_code_salary;

SELECT 
	year_salary AS year_salary_2013,
	industry_branch_code_salary,
	industry_name_salary,
	avg(value_salary) AS average_salary_2013
FROM salary_industry
WHERE year_salary = 2013
GROUP BY year_salary,
	industry_branch_code_salary,
	industry_name_salary
ORDER BY industry_branch_code_salary;

SELECT 
	year_salary AS year_salary_2014,
	industry_branch_code_salary,
	industry_name_salary,
	avg(value_salary) AS average_salary_2014
FROM salary_industry
WHERE year_salary = 2014
GROUP BY year_salary,
	industry_branch_code_salary,
	industry_name_salary
ORDER BY industry_branch_code_salary;

SELECT 
	year_salary AS year_salary_2015,
	industry_branch_code_salary,
	industry_name_salary,
	avg(value_salary) AS average_salary_2015
FROM salary_industry
WHERE year_salary = 2015
GROUP BY year_salary,
	industry_branch_code_salary,
	industry_name_salary
ORDER BY industry_branch_code_salary;

SELECT 
	year_salary AS year_salary_2016,
	industry_branch_code_salary,
	industry_name_salary,
	avg(value_salary) AS average_salary_2016
FROM salary_industry
WHERE year_salary = 2016
GROUP BY year_salary,
	industry_branch_code_salary,
	industry_name_salary
ORDER BY industry_branch_code_salary;

SELECT 
	year_salary AS year_salary_2017,
	industry_branch_code_salary,
	industry_name_salary,
	avg(value_salary) AS average_salary_2017
FROM salary_industry
WHERE year_salary = 2017
GROUP BY year_salary,
	industry_branch_code_salary,
	industry_name_salary
ORDER BY industry_branch_code_salary;

SELECT 
	year_salary AS year_salary_2018,
	industry_branch_code_salary,
	industry_name_salary,
	avg(value_salary) AS average_salary_2018
FROM salary_industry
WHERE year_salary = 2018
GROUP BY year_salary,
	industry_branch_code_salary,
	industry_name_salary
ORDER BY industry_branch_code_salary;


CREATE OR REPLACE VIEW average_salaries AS
WITH 
    avg_salary_2006 AS (
        SELECT 
            year_salary AS year_salary_2006,
            industry_branch_code_salary,
            industry_name_salary,
            AVG(value_salary) AS average_salary_2006
        FROM salary_industry
        WHERE year_salary = 2006
        GROUP BY year_salary, industry_branch_code_salary, industry_name_salary
    ),
    avg_salary_2007 AS (
        SELECT 
            year_salary AS year_salary_2007,
            industry_branch_code_salary,
            industry_name_salary,
            AVG(value_salary) AS average_salary_2007
        FROM salary_industry
        WHERE year_salary = 2007
        GROUP BY year_salary, industry_branch_code_salary, industry_name_salary
    ),
    avg_salary_2008 AS (
        SELECT 
            year_salary AS year_salary_2008,
            industry_branch_code_salary,
            industry_name_salary,
            AVG(value_salary) AS average_salary_2008
        FROM salary_industry
        WHERE year_salary = 2008
        GROUP BY year_salary, industry_branch_code_salary, industry_name_salary
    ),
    avg_salary_2009 AS (
        SELECT 
            year_salary AS year_salary_2009,
            industry_branch_code_salary,
            industry_name_salary,
            AVG(value_salary) AS average_salary_2009
        FROM salary_industry
        WHERE year_salary = 2009
        GROUP BY year_salary, industry_branch_code_salary, industry_name_salary
    ),
    avg_salary_2010 AS (
        SELECT 
            year_salary AS year_salary_2010,
            industry_branch_code_salary,
            industry_name_salary,
            AVG(value_salary) AS average_salary_2010
        FROM salary_industry
        WHERE year_salary = 2010
        GROUP BY year_salary, industry_branch_code_salary, industry_name_salary
    ),
    avg_salary_2011 AS (
        SELECT 
            year_salary AS year_salary_2011,
            industry_branch_code_salary,
            industry_name_salary,
            AVG(value_salary) AS average_salary_2011
        FROM salary_industry
        WHERE year_salary = 2011
        GROUP BY year_salary, industry_branch_code_salary, industry_name_salary
    ),
    avg_salary_2012 AS (
        SELECT 
            year_salary AS year_salary_2012,
            industry_branch_code_salary,
            industry_name_salary,
            AVG(value_salary) AS average_salary_2012
        FROM salary_industry
        WHERE year_salary = 2012
        GROUP BY year_salary, industry_branch_code_salary, industry_name_salary
    ),
    avg_salary_2013 AS (
        SELECT 
            year_salary AS year_salary_2013,
            industry_branch_code_salary,
            industry_name_salary,
            AVG(value_salary) AS average_salary_2013
        FROM salary_industry
        WHERE year_salary = 2013
        GROUP BY year_salary, industry_branch_code_salary, industry_name_salary
    ),
    avg_salary_2014 AS (
        SELECT 
            year_salary AS year_salary_2014,
            industry_branch_code_salary,
            industry_name_salary,
            AVG(value_salary) AS average_salary_2014
        FROM salary_industry
        WHERE year_salary = 2014
        GROUP BY year_salary, industry_branch_code_salary, industry_name_salary
    ),
    avg_salary_2015 AS (
        SELECT 
            year_salary AS year_salary_2015,
            industry_branch_code_salary,
            industry_name_salary,
            AVG(value_salary) AS average_salary_2015
        FROM salary_industry
        WHERE year_salary = 2015
        GROUP BY year_salary, industry_branch_code_salary, industry_name_salary
    ),
    avg_salary_2016 AS (
        SELECT 
            year_salary AS year_salary_2016,
            industry_branch_code_salary,
            industry_name_salary,
            AVG(value_salary) AS average_salary_2016
        FROM salary_industry
        WHERE year_salary = 2016
        GROUP BY year_salary, industry_branch_code_salary, industry_name_salary
    ),
    avg_salary_2017 AS (
        SELECT 
            year_salary AS year_salary_2017,
            industry_branch_code_salary,
            industry_name_salary,
            AVG(value_salary) AS average_salary_2017
        FROM salary_industry
        WHERE year_salary = 2017
        GROUP BY year_salary, industry_branch_code_salary, industry_name_salary
    ),
    avg_salary_2018 AS (
        SELECT 
            year_salary AS year_salary_2018,
            industry_branch_code_salary,
            industry_name_salary,
            AVG(value_salary) AS average_salary_2018
        FROM salary_industry
        WHERE year_salary = 2018
        GROUP BY year_salary, industry_branch_code_salary, industry_name_salary
    )
SELECT 
    as2006.industry_branch_code_salary,
    as2006.industry_name_salary,
    as2006.average_salary_2006,
    as2007.average_salary_2007,
    as2008.average_salary_2008,
    as2009.average_salary_2009,
    as2010.average_salary_2010,
    as2011.average_salary_2011,
    as2012.average_salary_2012,
    as2013.average_salary_2013,
    as2014.average_salary_2014,
    as2015.average_salary_2015,
    as2016.average_salary_2016,
    as2017.average_salary_2017,
    as2018.average_salary_2018
FROM avg_salary_2006 as2006
LEFT JOIN avg_salary_2007 as2007 ON as2006.industry_branch_code_salary = as2007.industry_branch_code_salary
LEFT JOIN avg_salary_2008 as2008 ON as2006.industry_branch_code_salary = as2008.industry_branch_code_salary
LEFT JOIN avg_salary_2009 as2009 ON as2006.industry_branch_code_salary = as2009.industry_branch_code_salary
LEFT JOIN avg_salary_2010 as2010 ON as2006.industry_branch_code_salary = as2010.industry_branch_code_salary
LEFT JOIN avg_salary_2011 as2011 ON as2006.industry_branch_code_salary = as2011.industry_branch_code_salary
LEFT JOIN avg_salary_2012 as2012 ON as2006.industry_branch_code_salary = as2012.industry_branch_code_salary
LEFT JOIN avg_salary_2013 as2013 ON as2006.industry_branch_code_salary = as2013.industry_branch_code_salary
LEFT JOIN avg_salary_2014 as2014 ON as2006.industry_branch_code_salary = as2014.industry_branch_code_salary
LEFT JOIN avg_salary_2015 as2015 ON as2006.industry_branch_code_salary = as2015.industry_branch_code_salary
LEFT JOIN avg_salary_2016 as2016 ON as2006.industry_branch_code_salary = as2016.industry_branch_code_salary
LEFT JOIN avg_salary_2017 as2017 ON as2006.industry_branch_code_salary = as2017.industry_branch_code_salary
LEFT JOIN avg_salary_2018 as2018 ON as2006.industry_branch_code_salary = as2018.industry_branch_code_salary;

SELECT *
FROM average_salaries;


CREATE OR REPLACE VIEW salary_differences AS
SELECT *,
    CASE
        WHEN average_salary_2007 IS NOT NULL THEN average_salary_2007 / average_salary_2006 * 100 - 100
        ELSE 0
    END AS difference_2007_and_2006,
    CASE
        WHEN average_salary_2008 IS NOT NULL THEN average_salary_2008 / average_salary_2007 * 100 - 100
        ELSE 0
    END AS difference_2008_and_2007,
    CASE
        WHEN average_salary_2009 IS NOT NULL THEN average_salary_2009 / average_salary_2008 * 100 - 100
        ELSE 0
    END AS difference_2009_and_2008,
    CASE
        WHEN average_salary_2010 IS NOT NULL THEN average_salary_2010 / average_salary_2009 * 100 - 100
        ELSE 0
    END AS difference_2010_and_2009,
    CASE
        WHEN average_salary_2011 IS NOT NULL THEN average_salary_2011 / average_salary_2010 * 100 - 100
        ELSE 0
    END AS difference_2011_and_2010,
    CASE
        WHEN average_salary_2012 IS NOT NULL THEN average_salary_2012 / average_salary_2011 * 100 - 100
        ELSE 0
    END AS difference_2012_and_2011,
    CASE
        WHEN average_salary_2013 IS NOT NULL THEN average_salary_2013 / average_salary_2012 * 100 - 100
        ELSE 0
    END AS difference_2013_and_2012,
    CASE
        WHEN average_salary_2014 IS NOT NULL THEN average_salary_2014 / average_salary_2013 * 100 - 100
        ELSE 0
    END AS difference_2014_and_2013,
    CASE
        WHEN average_salary_2015 IS NOT NULL THEN average_salary_2015 / average_salary_2014 * 100 - 100
        ELSE 0
    END AS difference_2015_and_2014,
    CASE
        WHEN average_salary_2016 IS NOT NULL THEN average_salary_2016 / average_salary_2015 * 100 - 100
        ELSE 0
    END AS difference_2016_and_2015,
    CASE
        WHEN average_salary_2017 IS NOT NULL THEN average_salary_2017 / average_salary_2016 * 100 - 100
        ELSE 0
    END AS difference_2017_and_2016,
    CASE
        WHEN average_salary_2018 IS NOT NULL THEN average_salary_2018 / average_salary_2017 * 100 - 100
        ELSE 0
    END AS difference_2018_and_2017
FROM average_salaries;

SELECT *
FROM salary_differences;

SELECT 
    industry_branch_code_salary,
    industry_name_salary,
    (difference_2007_and_2006 + difference_2008_and_2007 + difference_2009_and_2008 + difference_2010_and_2009 +
    difference_2011_and_2010 + difference_2012_and_2011 + difference_2013_and_2012 + difference_2014_and_2013 +
    difference_2015_and_2014 + difference_2016_and_2015 + difference_2017_and_2016 + difference_2018_and_2017) / 12 AS average_difference_salary
FROM salary_differences;



SELECT 
	avg(difference_2007_and_2006) AS average_difference_2007_and_2006,
	avg(difference_2008_and_2007) AS average_difference_2008_and_2007,
	avg(difference_2009_and_2008) AS average_difference_2009_and_2008,
	avg(difference_2010_and_2009) AS average_difference_2010_and_2009,
	avg(difference_2011_and_2010) AS average_difference_2011_and_2010,
	avg(difference_2012_and_2011) AS average_difference_2012_and_2011,
	avg(difference_2013_and_2012) AS average_difference_2013_and_2012,
	avg(difference_2014_and_2013) AS average_difference_2014_and_2013,
	avg(difference_2015_and_2014) AS average_difference_2015_and_2014,
	avg(difference_2016_and_2015) AS average_difference_2016_and_2015,
	avg(difference_2017_and_2016) AS average_difference_2017_and_2016,
	avg(difference_2018_and_2017) AS average_difference_2018_and_2017
FROM salary_differences;

SELECT 
    avg(difference_2007_and_2006) AS average_difference_2007_and_2006,
    avg(difference_2008_and_2007) AS average_difference_2008_and_2007,
    avg(difference_2009_and_2008) AS average_difference_2009_and_2008,
    avg(difference_2010_and_2009) AS average_difference_2010_and_2009,
    avg(difference_2011_and_2010) AS average_difference_2011_and_2010,
    avg(difference_2012_and_2011) AS average_difference_2012_and_2011,
    avg(difference_2013_and_2012) AS average_difference_2013_and_2012,
    avg(difference_2014_and_2013) AS average_difference_2014_and_2013,
    avg(difference_2015_and_2014) AS average_difference_2015_and_2014,
    avg(difference_2016_and_2015) AS average_difference_2016_and_2015,
    avg(difference_2017_and_2016) AS average_difference_2017_and_2016,
    avg(difference_2018_and_2017) AS average_difference_2018_and_2017
FROM food_differences;


-- Excel data

CREATE MATERIALIZED VIEW v_salary_and_food AS
SELECT *
FROM salary_and_food;

CREATE TABLE salary_and_food AS 
SELECT 0;

SELECT *
FROM salary_and_food; 

ALTER TABLE salary_and_food ADD COLUMN "food" NUMERIC;
ALTER TABLE salary_and_food ADD COLUMN "salary" NUMERIC;
ALTER TABLE salary_and_food ADD COLUMN "difference" NUMERIC;
ALTER TABLE salary_and_food DROP COLUMN "?column?";

SELECT *
FROM salary_and_food;

INSERT INTO salary_and_food
VALUES
(9.258,	6.911,	2.347),
(8.917,	7.239,	1.678),
(-6.579,	2.969,	-9.547),
(1.513,	2.171,	-0.658),
(4.840,	2.242,	2.597),
(7.474,	2.718,	4.756),
(6.009,	-0.776,	6.785),
(-0.627,	2.523,	-3.150),
(-0.692,	2.838,	-3.531),
(-1.553,	3.952,	-5.505),
(7.245,	6.566,	0.679),
(2.365,	7.781,	-5.416);

DELETE FROM salary_and_food
WHERE (food, salary, difference) IS NULL;

SELECT * FROM v_salary_and_food;

SELECT 
	*,
	CASE 
		WHEN difference > 0 AND difference > 10 THEN 1
		ELSE 0
	END AS over_10_perecent_difference
FROM v_salary_and_food;



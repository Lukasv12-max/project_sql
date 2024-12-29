SELECT *
FROM t_lukas_vesely_project_sql_secondary_final;

SELECT 
	"year",
	gdp
FROM t_lukas_vesely_project_sql_secondary_final
WHERE country = 'Czech Republic';

SELECT 
	industry_branch_code_salary,
	industry_name_salary,
	difference_2007_and_2006,
	difference_2008_and_2007,
	difference_2009_and_2008,
	difference_2010_and_2009,
	difference_2011_and_2010,
	difference_2012_and_2011,
	difference_2013_and_2012,
	difference_2014_and_2013,
	difference_2015_and_2014,
	difference_2016_and_2015,
	difference_2017_and_2016,
	difference_2018_and_2017 
FROM salary_differences;


SELECT 
    "year",
    gdp AS gdp_2006
FROM t_lukas_vesely_project_sql_secondary_final
WHERE country = 'Czech Republic'
    AND "year" = 2006;

SELECT 
    "year",
    gdp AS gdp_2007
FROM t_lukas_vesely_project_sql_secondary_final
WHERE country = 'Czech Republic'
    AND "year" = 2007;

SELECT 
    "year",
    gdp AS gdp_2008
FROM t_lukas_vesely_project_sql_secondary_final
WHERE country = 'Czech Republic'
    AND "year" = 2008;

SELECT 
    "year",
    gdp AS gdp_2009
FROM t_lukas_vesely_project_sql_secondary_final
WHERE country = 'Czech Republic'
    AND "year" = 2009;

SELECT 
    "year",
    gdp AS gdp_2010
FROM t_lukas_vesely_project_sql_secondary_final
WHERE country = 'Czech Republic'
    AND "year" = 2010;

SELECT 
    "year",
    gdp AS gdp_2011
FROM t_lukas_vesely_project_sql_secondary_final
WHERE country = 'Czech Republic'
    AND "year" = 2011;

SELECT 
    "year",
    gdp AS gdp_2012
FROM t_lukas_vesely_project_sql_secondary_final
WHERE country = 'Czech Republic'
    AND "year" = 2012;

SELECT 
    "year",
    gdp AS gdp_2013
FROM t_lukas_vesely_project_sql_secondary_final
WHERE country = 'Czech Republic'
    AND "year" = 2013;

SELECT 
    "year",
    gdp AS gdp_2014
FROM t_lukas_vesely_project_sql_secondary_final
WHERE country = 'Czech Republic'
    AND "year" = 2014;

SELECT 
    "year",
    gdp AS gdp_2015
FROM t_lukas_vesely_project_sql_secondary_final
WHERE country = 'Czech Republic'
    AND "year" = 2015;

SELECT 
    "year",
    gdp AS gdp_2016
FROM t_lukas_vesely_project_sql_secondary_final
WHERE country = 'Czech Republic'
    AND "year" = 2016;

SELECT 
    "year",
    gdp AS gdp_2017
FROM t_lukas_vesely_project_sql_secondary_final
WHERE country = 'Czech Republic'
    AND "year" = 2017;

SELECT 
    "year",
    gdp AS gdp_2018
FROM t_lukas_vesely_project_sql_secondary_final
WHERE country = 'Czech Republic'
    AND "year" = 2018;


CREATE OR REPLACE VIEW gdp_years AS WITH 
    gdp_2006 AS (
        SELECT 
            "year" AS year_2006,
            country,
            gdp AS gdp_2006
        FROM t_lukas_vesely_project_sql_secondary_final
        WHERE "year" = 2006 AND country = 'Czech Republic'
    ),
    gdp_2007 AS (
        SELECT 
            "year" AS year_2007,
            country,
            gdp AS gdp_2007
        FROM t_lukas_vesely_project_sql_secondary_final
        WHERE "year" = 2007 AND country = 'Czech Republic'
    ),
    gdp_2008 AS (
        SELECT 
            "year" AS year_2008,
            country,
            gdp AS gdp_2008
        FROM t_lukas_vesely_project_sql_secondary_final
        WHERE "year" = 2008 AND country = 'Czech Republic'
    ),
    gdp_2009 AS (
        SELECT 
            "year" AS year_2009,
            country,
            gdp AS gdp_2009
        FROM t_lukas_vesely_project_sql_secondary_final
        WHERE "year" = 2009 AND country = 'Czech Republic'
    ),
    gdp_2010 AS (
        SELECT 
            "year" AS year_2010,
            country,
            gdp AS gdp_2010
        FROM t_lukas_vesely_project_sql_secondary_final
        WHERE "year" = 2010 AND country = 'Czech Republic'
    ),
    gdp_2011 AS (
        SELECT 
            "year" AS year_2011,
            country,
            gdp AS gdp_2011
        FROM t_lukas_vesely_project_sql_secondary_final
        WHERE "year" = 2011 AND country = 'Czech Republic'
    ),
    gdp_2012 AS (
        SELECT 
            "year" AS year_2012,
            country,
            gdp AS gdp_2012
        FROM t_lukas_vesely_project_sql_secondary_final
        WHERE "year" = 2012 AND country = 'Czech Republic'
    ),
    gdp_2013 AS (
        SELECT 
            "year" AS year_2013,
            country,
            gdp AS gdp_2013
        FROM t_lukas_vesely_project_sql_secondary_final
        WHERE "year" = 2013 AND country = 'Czech Republic'
    ),
    gdp_2014 AS (
        SELECT 
            "year" AS year_2014,
            country,
            gdp AS gdp_2014
        FROM t_lukas_vesely_project_sql_secondary_final
        WHERE "year" = 2014 AND country = 'Czech Republic'
    ),
    gdp_2015 AS (
        SELECT 
            "year" AS year_2015,
            country,
            gdp AS gdp_2015
        FROM t_lukas_vesely_project_sql_secondary_final
        WHERE "year" = 2015 AND country = 'Czech Republic'
    ),
    gdp_2016 AS (
        SELECT 
            "year" AS year_2016,
            country,
            gdp AS gdp_2016
        FROM t_lukas_vesely_project_sql_secondary_final
        WHERE "year" = 2016 AND country = 'Czech Republic'
    ),
    gdp_2017 AS (
        SELECT 
            "year" AS year_2017,
            country,
            gdp AS gdp_2017
        FROM t_lukas_vesely_project_sql_secondary_final
        WHERE "year" = 2017 AND country = 'Czech Republic'
    ),
    gdp_2018 AS (
        SELECT 
            "year" AS year_2018,
            country,
            gdp AS gdp_2018
        FROM t_lukas_vesely_project_sql_secondary_final
        WHERE "year" = 2018 AND country = 'Czech Republic'
    )
SELECT 
    gdp2006.gdp_2006,
    gdp2007.gdp_2007,
    gdp2008.gdp_2008,
    gdp2009.gdp_2009,
    gdp2010.gdp_2010,
    gdp2011.gdp_2011,
    gdp2012.gdp_2012,
    gdp2013.gdp_2013,
    gdp2014.gdp_2014,
    gdp2015.gdp_2015,
    gdp2016.gdp_2016,
    gdp2017.gdp_2017,
    gdp2018.gdp_2018
FROM gdp_2006 gdp2006
LEFT JOIN gdp_2007 gdp2007 ON gdp2006.country = gdp2007.country
LEFT JOIN gdp_2008 gdp2008 ON gdp2006.country = gdp2008.country
LEFT JOIN gdp_2009 gdp2009 ON gdp2006.country = gdp2009.country
LEFT JOIN gdp_2010 gdp2010 ON gdp2006.country = gdp2010.country
LEFT JOIN gdp_2011 gdp2011 ON gdp2006.country = gdp2011.country
LEFT JOIN gdp_2012 gdp2012 ON gdp2006.country = gdp2012.country
LEFT JOIN gdp_2013 gdp2013 ON gdp2006.country = gdp2013.country
LEFT JOIN gdp_2014 gdp2014 ON gdp2006.country = gdp2014.country
LEFT JOIN gdp_2015 gdp2015 ON gdp2006.country = gdp2015.country
LEFT JOIN gdp_2016 gdp2016 ON gdp2006.country = gdp2016.country
LEFT JOIN gdp_2017 gdp2017 ON gdp2006.country = gdp2017.country
LEFT JOIN gdp_2018 gdp2018 ON gdp2006.country = gdp2018.country;

SELECT *
FROM gdp_years;

CREATE OR REPLACE VIEW gdp_differences AS
SELECT *,
    CASE
        WHEN gdp_2007 IS NOT NULL THEN gdp_2007 / gdp_2006 * 100 - 100
        ELSE 0
    END AS difference_2007_and_2006,
    CASE
        WHEN gdp_2008 IS NOT NULL THEN gdp_2008 / gdp_2007 * 100 - 100
        ELSE 0
    END AS difference_2008_and_2007,
    CASE
        WHEN gdp_2009 IS NOT NULL THEN gdp_2009 / gdp_2008 * 100 - 100
        ELSE 0
    END AS difference_2009_and_2008,
    CASE
        WHEN gdp_2010 IS NOT NULL THEN gdp_2010 / gdp_2009 * 100 - 100
        ELSE 0
    END AS difference_2010_and_2009,
    CASE
        WHEN gdp_2011 IS NOT NULL THEN gdp_2011 / gdp_2010 * 100 - 100
        ELSE 0
    END AS difference_2011_and_2010,
    CASE
        WHEN gdp_2012 IS NOT NULL THEN gdp_2012 / gdp_2011 * 100 - 100
        ELSE 0
    END AS difference_2012_and_2011,
    CASE
        WHEN gdp_2013 IS NOT NULL THEN gdp_2013 / gdp_2012 * 100 - 100
        ELSE 0
    END AS difference_2013_and_2012,
    CASE
        WHEN gdp_2014 IS NOT NULL THEN gdp_2014 / gdp_2013 * 100 - 100
        ELSE 0
    END AS difference_2014_and_2013,
    CASE
        WHEN gdp_2015 IS NOT NULL THEN gdp_2015 / gdp_2014 * 100 - 100
        ELSE 0
    END AS difference_2015_and_2014,
    CASE
        WHEN gdp_2016 IS NOT NULL THEN gdp_2016 / gdp_2015 * 100 - 100
        ELSE 0
    END AS difference_2016_and_2015,
    CASE
        WHEN gdp_2017 IS NOT NULL THEN gdp_2017 / gdp_2016 * 100 - 100
        ELSE 0
    END AS difference_2017_and_2016,
    CASE
        WHEN gdp_2018 IS NOT NULL THEN gdp_2018 / gdp_2017 * 100 - 100
        ELSE 0
    END AS difference_2018_and_2017
FROM gdp_years;

SELECT *
FROM gdp_differences;

SELECT 
	difference_2007_and_2006,
	difference_2008_and_2007,
	difference_2009_and_2008,
	difference_2010_and_2009,
	difference_2011_and_2010,
	difference_2012_and_2011,
	difference_2013_and_2012,
	difference_2014_and_2013,
	difference_2015_and_2014,
	difference_2016_and_2015,
	difference_2017_and_2016,
	difference_2018_and_2017 
FROM gdp_differences;



-- mzdy
SELECT 
	SUM(average_salary_2007) / SUM(average_salary_2006) * 100 - 100 AS average_difference_2007_and_2006,
    SUM(average_salary_2008) / SUM(average_salary_2007) * 100 - 100 AS average_difference_2008_and_2007,
    SUM(average_salary_2009) / SUM(average_salary_2008) * 100 - 100 AS average_difference_2009_and_2008,
    SUM(average_salary_2010) / SUM(average_salary_2009) * 100 - 100 AS average_difference_2010_and_2009,
    SUM(average_salary_2011) / SUM(average_salary_2010) * 100 - 100 AS average_difference_2011_and_2010,
    SUM(average_salary_2012) / SUM(average_salary_2011) * 100 - 100 AS average_difference_2012_and_2011,
    SUM(average_salary_2013) / SUM(average_salary_2012) * 100 - 100 AS average_difference_2013_and_2012,
    SUM(average_salary_2014) / SUM(average_salary_2013) * 100 - 100 AS average_difference_2014_and_2013,
    SUM(average_salary_2015) / SUM(average_salary_2014) * 100 - 100 AS average_difference_2015_and_2014,
    SUM(average_salary_2016) / SUM(average_salary_2015) * 100 - 100 AS average_difference_2016_and_2015,
    SUM(average_salary_2017) / SUM(average_salary_2016) * 100 - 100 AS average_difference_2017_and_2016,
    SUM(average_salary_2018) / SUM(average_salary_2017) * 100 - 100 AS average_difference_2018_and_2017
FROM salary_differences;


-- potraviny
SELECT 
    SUM(average_price_of_food_2007) / SUM(average_price_of_food_2006) * 100 - 100 AS average_difference_2007_and_2006,
    SUM(average_price_of_food_2008) / SUM(average_price_of_food_2007) * 100 - 100 AS average_difference_2008_and_2007,
    SUM(average_price_of_food_2009) / SUM(average_price_of_food_2008) * 100 - 100 AS average_difference_2009_and_2008,
    SUM(average_price_of_food_2010) / SUM(average_price_of_food_2009) * 100 - 100 AS average_difference_2010_and_2009,
    SUM(average_price_of_food_2011) / SUM(average_price_of_food_2010) * 100 - 100 AS average_difference_2011_and_2010,
    SUM(average_price_of_food_2012) / SUM(average_price_of_food_2011) * 100 - 100 AS average_difference_2012_and_2011,
    SUM(average_price_of_food_2013) / SUM(average_price_of_food_2012) * 100 - 100 AS average_difference_2013_and_2012,
    SUM(average_price_of_food_2014) / SUM(average_price_of_food_2013) * 100 - 100 AS average_difference_2014_and_2013,
    SUM(average_price_of_food_2015) / SUM(average_price_of_food_2014) * 100 - 100 AS average_difference_2015_and_2014,
    SUM(average_price_of_food_2016) / SUM(average_price_of_food_2015) * 100 - 100 AS average_difference_2016_and_2015,
    SUM(average_price_of_food_2017) / SUM(average_price_of_food_2016) * 100 - 100 AS average_difference_2017_and_2016,
    SUM(average_price_of_food_2018) / SUM(average_price_of_food_2017) * 100 - 100 AS average_difference_2018_and_2017
FROM food_differences;



CREATE TABLE salary_GDP AS 
SELECT 0;

SELECT *
FROM salary_gdp; 

ALTER TABLE salary_GDP ADD COLUMN "years" VARCHAR(256);
ALTER TABLE salary_GDP ADD COLUMN "salary" NUMERIC;
ALTER TABLE salary_GDP ADD COLUMN "gdp" NUMERIC;
ALTER TABLE salary_GDP ADD COLUMN "gdp_plus_one_year" NUMERIC;
ALTER TABLE salary_GDP DROP COLUMN "?column?";


INSERT INTO salary_gdp
VALUES
('average_difference_2007_and_2006', 6.8371492197839600, 5.570338859210253, NULL),
('average_difference_2008_and_2007', 7.8723943389497200, 2.686411950927777, 5.570338859210253),
('average_difference_2009_and_2008', 3.1596076332291600, -4.6573310917177935, 2.686411950927777),
('average_difference_2010_and_2009', 1.9542198691996300, 2.43490215904518, -4.6573310917177935),
('average_difference_2011_and_2010', 2.3045499955540900, 1.7603596244522919, 2.43490215904518),
('average_difference_2012_and_2011', 3.0314223924169100, -0.7850042990033472, 1.7603596244522919),
('average_difference_2013_and_2012', -1.55692485569211340200, -0.045903673551748625, -0.7850042990033472),
('average_difference_2014_and_2013', 2.5585390405610900, 2.262102897080709, -0.045903673551748625),
('average_difference_2015_and_2014', 2.5082516036900500, 5.3883808381534095, 2.262102897080709),
('average_difference_2016_and_2015', 3.6496035384864300, 2.537284520313648, 5.3883808381534095),
('average_difference_2017_and_2016', 6.2821873894127700, 5.1687243041307624, 2.537284520313648),
('average_difference_2018_and_2017', 7.6239341684364800, 3.198656101314384, 5.1687243041307624)

DELETE FROM salary_gdp 
WHERE years IS NULL
  AND salary IS NULL
  AND gdp IS NULL
  AND gdp_plus_one_year IS NULL;


SELECT 
	*,
	CASE 
		WHEN gdp > 4.5 AND salary > 4.5 THEN 1
		ELSE 0
	END AS rise_same_year,
	CASE 
		WHEN gdp_plus_one_year > 4.5 AND salary > 4.5 THEN 1
		ELSE 0
	END AS rise_plus_one_year
FROM salary_gdp;



CREATE TABLE food_GDP AS 
SELECT 0;

SELECT *
FROM food_gdp; 

ALTER TABLE food_GDP ADD COLUMN "years" VARCHAR(256);
ALTER TABLE food_GDP ADD COLUMN "food" NUMERIC;
ALTER TABLE food_GDP ADD COLUMN "gdp" NUMERIC;
ALTER TABLE food_GDP ADD COLUMN "gdp_plus_one_year" NUMERIC;
ALTER TABLE food_GDP DROP COLUMN "?column?";


INSERT INTO food_gdp
VALUES
('difference_2007_and_2006', 6.761468298762296, 5.570338859210253, NULL),
('difference_2008_and_2007', 6.187710303049826, 2.686411950927777, 5.570338859210253),
('difference_2009_and_2008', -6.414447152427613, -4.6573310917177935, 2.686411950927777),
('difference_2010_and_2009', 1.9444557686062893, 2.43490215904518, -4.6573310917177935),
('difference_2011_and_2010', 3.3497162646152248, 1.7603596244522919, 2.43490215904518),
('difference_2012_and_2011', 6.7308155257133535, -0.7850042990033472, 1.7603596244522919),
('difference_2013_and_2012', 5.098314623321087, -0.045903673551748625, -0.7850042990033472),
('difference_2014_and_2013', 0.7374985669221417, 2.262102897080709, -0.045903673551748625),
('difference_2015_and_2014', -2.909219840533396, 5.3883808381534095, 2.262102897080709),
('difference_2016_and_2015', -1.420511778135193, 2.537284520313648, 5.3883808381534095),
('difference_2017_and_2016', 10.12171148034868, 5.1687243041307624, 2.537284520313648),
('difference_2018_and_2017', 2.0822968067570287, 3.198656101314384, 5.1687243041307624);


DELETE FROM food_gdp 
WHERE years IS NULL
  AND food IS NULL
  AND gdp IS NULL
  AND gdp_plus_one_year IS NULL;


SELECT 
	*,
	CASE 
		WHEN gdp > 4.5 AND food > 4.5 THEN 1
		ELSE 0
	END AS rise_same_year,
	CASE 
		WHEN gdp_plus_one_year > 4.5 AND food > 4.5 THEN 1
		ELSE 0
	END AS rise_plus_one_year
FROM food_gdp;


















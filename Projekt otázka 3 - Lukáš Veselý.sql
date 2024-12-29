SELECT *
FROM food f;

SELECT 
	year_salary AS year_salary_2006,
	category_code_food,
	name_food,
	avg(price_food) AS average_price_of_food_2006
FROM food
WHERE year_salary = 2006
GROUP BY year_salary,
	category_code_food,
	name_food;

SELECT 
	year_salary AS year_salary_2007,
	category_code_food,
	name_food,
	avg(price_food) AS average_price_of_food_2007 
FROM food
WHERE year_salary = 2007
GROUP BY year_salary,
	category_code_food,
	name_food;

SELECT 
	year_salary AS year_salary_2008,
	category_code_food,
	name_food,
	avg(price_food) AS average_price_of_food_2008 
FROM food
WHERE year_salary = 2008
GROUP BY year_salary,
	category_code_food,
	name_food;

SELECT 
	year_salary AS year_salary_2009,
	category_code_food,
	name_food,
	avg(price_food) AS average_price_of_food_2009 
FROM food
WHERE year_salary = 2009
GROUP BY year_salary,
	category_code_food,
	name_food;

SELECT 
	year_salary AS year_salary_2010,
	category_code_food,
	name_food,
	avg(price_food) AS average_price_of_food_2010 
FROM food
WHERE year_salary = 2010
GROUP BY year_salary,
	category_code_food,
	name_food;

SELECT 
	year_salary AS year_salary_2011,
	category_code_food,
	name_food,
	avg(price_food) AS average_price_of_food_2011 
FROM food
WHERE year_salary = 2011
GROUP BY year_salary,
	category_code_food,
	name_food;

SELECT 
	year_salary AS year_salary_2012,
	category_code_food,
	name_food,
	avg(price_food) AS average_price_of_food_2012 
FROM food
WHERE year_salary = 2012
GROUP BY year_salary,
	category_code_food,
	name_food;

SELECT 
	year_salary AS year_salary_2013,
	category_code_food,
	name_food,
	avg(price_food) AS average_price_of_food_2013 
FROM food
WHERE year_salary = 2013
GROUP BY year_salary,
	category_code_food,
	name_food;

SELECT 
	year_salary AS year_salary_2014,
	category_code_food,
	name_food,
	avg(price_food) AS average_price_of_food_2014 
FROM food
WHERE year_salary = 2014
GROUP BY year_salary,
	category_code_food,
	name_food;

SELECT 
	year_salary AS year_salary_2015,
	category_code_food,
	name_food,
	avg(price_food) AS average_price_of_food_2015 
FROM food
WHERE year_salary = 2015
GROUP BY year_salary,
	category_code_food,
	name_food;

SELECT 
	year_salary AS year_salary_2016,
	category_code_food,
	name_food,
	avg(price_food) AS average_price_of_food_2016 
FROM food
WHERE year_salary = 2016
GROUP BY year_salary,
	category_code_food,
	name_food;

SELECT 
	year_salary AS year_salary_2017,
	category_code_food,
	name_food,
	avg(price_food) AS average_price_of_food_2017 
FROM food
WHERE year_salary = 2017
GROUP BY year_salary,
	category_code_food,
	name_food;

SELECT 
	year_salary AS year_salary_2018,
	category_code_food,
	name_food,
	avg(price_food) AS average_price_of_food_2018 
FROM food
WHERE year_salary = 2018
GROUP BY year_salary,
	category_code_food,
	name_food;

CREATE OR REPLACE VIEW food_average_prices AS 
WITH 
    avg_price_2006 AS (
        SELECT 
            year_salary AS year_salary_2006,
            category_code_food,
            name_food,
            AVG(price_food) AS average_price_of_food_2006
        FROM food
        WHERE year_salary = 2006
        GROUP BY year_salary, category_code_food, name_food
    ),
    avg_price_2007 AS (
        SELECT 
            year_salary AS year_salary_2007,
            category_code_food,
            name_food,
            AVG(price_food) AS average_price_of_food_2007
        FROM food
        WHERE year_salary = 2007
        GROUP BY year_salary, category_code_food, name_food
    ),
    avg_price_2008 AS (
        SELECT 
            year_salary AS year_salary_2008,
            category_code_food,
            name_food,
            AVG(price_food) AS average_price_of_food_2008
        FROM food
        WHERE year_salary = 2008
        GROUP BY year_salary, category_code_food, name_food
    ),
    avg_price_2009 AS (
        SELECT 
            year_salary AS year_salary_2009,
            category_code_food,
            name_food,
            AVG(price_food) AS average_price_of_food_2009
        FROM food
        WHERE year_salary = 2009
        GROUP BY year_salary, category_code_food, name_food
    ),
    avg_price_2010 AS (
        SELECT 
            year_salary AS year_salary_2010,
            category_code_food,
            name_food,
            AVG(price_food) AS average_price_of_food_2010
        FROM food
        WHERE year_salary = 2010
        GROUP BY year_salary, category_code_food, name_food
    ),
    avg_price_2011 AS (
        SELECT 
            year_salary AS year_salary_2011,
            category_code_food,
            name_food,
            AVG(price_food) AS average_price_of_food_2011
        FROM food
        WHERE year_salary = 2011
        GROUP BY year_salary, category_code_food, name_food
    ),
    avg_price_2012 AS (
        SELECT 
            year_salary AS year_salary_2012,
            category_code_food,
            name_food,
            AVG(price_food) AS average_price_of_food_2012
        FROM food
        WHERE year_salary = 2012
        GROUP BY year_salary, category_code_food, name_food
    ),
    avg_price_2013 AS (
        SELECT 
            year_salary AS year_salary_2013,
            category_code_food,
            name_food,
            AVG(price_food) AS average_price_of_food_2013
        FROM food
        WHERE year_salary = 2013
        GROUP BY year_salary, category_code_food, name_food
    ),
    avg_price_2014 AS (
        SELECT 
            year_salary AS year_salary_2014,
            category_code_food,
            name_food,
            AVG(price_food) AS average_price_of_food_2014
        FROM food
        WHERE year_salary = 2014
        GROUP BY year_salary, category_code_food, name_food
    ),
    avg_price_2015 AS (
        SELECT 
            year_salary AS year_salary_2015,
            category_code_food,
            name_food,
            AVG(price_food) AS average_price_of_food_2015
        FROM food
        WHERE year_salary = 2015
        GROUP BY year_salary, category_code_food, name_food
    ),
    avg_price_2016 AS (
        SELECT 
            year_salary AS year_salary_2016,
            category_code_food,
            name_food,
            AVG(price_food) AS average_price_of_food_2016
        FROM food
        WHERE year_salary = 2016
        GROUP BY year_salary, category_code_food, name_food
    ),
    avg_price_2017 AS (
        SELECT 
            year_salary AS year_salary_2017,
            category_code_food,
            name_food,
            AVG(price_food) AS average_price_of_food_2017
        FROM food
        WHERE year_salary = 2017
        GROUP BY year_salary, category_code_food, name_food
    ),
    avg_price_2018 AS (
        SELECT 
            year_salary AS year_salary_2018,
            category_code_food,
            name_food,
            AVG(price_food) AS average_price_of_food_2018
        FROM food
        WHERE year_salary = 2018
        GROUP BY year_salary, category_code_food, name_food
    )
SELECT 
    ap2006.category_code_food,
    ap2006.name_food,
    ap2006.average_price_of_food_2006,
    ap2007.average_price_of_food_2007,
    ap2008.average_price_of_food_2008,
    ap2009.average_price_of_food_2009,
    ap2010.average_price_of_food_2010,
    ap2011.average_price_of_food_2011,
    ap2012.average_price_of_food_2012,
    ap2013.average_price_of_food_2013,
    ap2014.average_price_of_food_2014,
    ap2015.average_price_of_food_2015,
    ap2016.average_price_of_food_2016,
    ap2017.average_price_of_food_2017,
    ap2018.average_price_of_food_2018
FROM avg_price_2006 ap2006
LEFT JOIN avg_price_2007 ap2007 ON ap2006.category_code_food = ap2007.category_code_food
LEFT JOIN avg_price_2008 ap2008 ON ap2006.category_code_food = ap2008.category_code_food
LEFT JOIN avg_price_2009 ap2009 ON ap2006.category_code_food = ap2009.category_code_food
LEFT JOIN avg_price_2010 ap2010 ON ap2006.category_code_food = ap2010.category_code_food
LEFT JOIN avg_price_2011 ap2011 ON ap2006.category_code_food = ap2011.category_code_food
LEFT JOIN avg_price_2012 ap2012 ON ap2006.category_code_food = ap2012.category_code_food
LEFT JOIN avg_price_2013 ap2013 ON ap2006.category_code_food = ap2013.category_code_food
LEFT JOIN avg_price_2014 ap2014 ON ap2006.category_code_food = ap2014.category_code_food
LEFT JOIN avg_price_2015 ap2015 ON ap2006.category_code_food = ap2015.category_code_food
LEFT JOIN avg_price_2016 ap2016 ON ap2006.category_code_food = ap2016.category_code_food
LEFT JOIN avg_price_2017 ap2017 ON ap2006.category_code_food = ap2017.category_code_food
LEFT JOIN avg_price_2018 ap2018 ON ap2006.category_code_food = ap2018.category_code_food;


SELECT *
FROM food_average_prices;

CREATE OR REPLACE VIEW food_differences AS
SELECT *,
	CASE
		WHEN average_price_of_food_2007 IS NOT NULL THEN average_price_of_food_2007 / average_price_of_food_2006 * 100 - 100
		ELSE 0
	END AS difference_2007_and_2006,
	CASE
		WHEN average_price_of_food_2008 IS NOT NULL THEN average_price_of_food_2008 / average_price_of_food_2007 * 100 - 100
		ELSE 0
	END AS difference_2008_and_2007,
	CASE
		WHEN average_price_of_food_2009 IS NOT NULL THEN average_price_of_food_2009 / average_price_of_food_2008 * 100 - 100
		ELSE 0
	END AS difference_2009_and_2008,
	CASE
		WHEN average_price_of_food_2010 IS NOT NULL THEN average_price_of_food_2010 / average_price_of_food_2009 * 100 - 100
		ELSE 0
	END AS difference_2010_and_2009,
	CASE
		WHEN average_price_of_food_2011 IS NOT NULL THEN average_price_of_food_2011 / average_price_of_food_2010 * 100 - 100
		ELSE 0
	END AS difference_2011_and_2010,
	CASE
		WHEN average_price_of_food_2012 IS NOT NULL THEN average_price_of_food_2012 / average_price_of_food_2011 * 100 - 100
		ELSE 0
	END AS difference_2012_and_2011,
	CASE
		WHEN average_price_of_food_2013 IS NOT NULL THEN average_price_of_food_2013 / average_price_of_food_2012 * 100 - 100
		ELSE 0
	END AS difference_2013_and_2012,
	CASE
		WHEN average_price_of_food_2014 IS NOT NULL THEN average_price_of_food_2014 / average_price_of_food_2013 * 100 - 100
		ELSE 0
	END AS difference_2014_and_2013,
	CASE
		WHEN average_price_of_food_2015 IS NOT NULL THEN average_price_of_food_2015 / average_price_of_food_2014 * 100 - 100
		ELSE 0
	END AS difference_2015_and_2014,
	CASE
		WHEN average_price_of_food_2016 IS NOT NULL THEN average_price_of_food_2016 / average_price_of_food_2015 * 100 - 100
		ELSE 0
	END AS difference_2016_and_2015,
	CASE
		WHEN average_price_of_food_2017 IS NOT NULL THEN average_price_of_food_2017 / average_price_of_food_2016 * 100 - 100
		ELSE 0
	END AS difference_2017_and_2016,
	CASE
		WHEN average_price_of_food_2018 IS NOT NULL THEN average_price_of_food_2018 / average_price_of_food_2017 * 100 - 100
		ELSE 0
	END AS difference_2018_and_2017
FROM food_average_prices;

SELECT *
FROM food_differences;


SELECT 
    category_code_food,
    name_food,
    (difference_2007_and_2006 + difference_2008_and_2007 + difference_2009_and_2008 + difference_2010_and_2009 +
    difference_2011_and_2010 + difference_2012_and_2011 + difference_2013_and_2012 + difference_2014_and_2013 +
    difference_2015_and_2014 + difference_2016_and_2015 + difference_2017_and_2016 + difference_2018_and_2017) / 12 AS average_difference
FROM food_differences;

SELECT 
	min(average_difference)
FROM (SELECT 
    category_code_food,
    name_food,
    (difference_2007_and_2006 + difference_2008_and_2007 + difference_2009_and_2008 + difference_2010_and_2009 +
    difference_2011_and_2010 + difference_2012_and_2011 + difference_2013_and_2012 + difference_2014_and_2013 +
    difference_2015_and_2014 + difference_2016_and_2015 + difference_2017_and_2016 + difference_2018_and_2017) / 12 AS average_difference
FROM food_differences);

SELECT 
	name_food
FROM (SELECT 
    category_code_food,
    name_food,
    (difference_2007_and_2006 + difference_2008_and_2007 + difference_2009_and_2008 + difference_2010_and_2009 +
    difference_2011_and_2010 + difference_2012_and_2011 + difference_2013_and_2012 + difference_2014_and_2013 +
    difference_2015_and_2014 + difference_2016_and_2015 + difference_2017_and_2016 + difference_2018_and_2017) / 12 AS average_difference
FROM food_differences)
WHERE average_difference = -1.918082784524292;

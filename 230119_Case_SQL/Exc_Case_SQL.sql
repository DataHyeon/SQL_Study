-- 연습문제 4

-- 1
-- 등급당 다양한 영화의 수 비교
SELECT DISTINCT rating FROM film;

SELECT
SUM(CASE rating
	WHEN 'R' THEN 1
	ELSE 0
END) AS r,

SUM(CASE rating
	WHEN 'PG' THEN 1
	ELSE 0
END) AS pg,

SUM(CASE rating
	WHEN 'PG-13' THEN 1
	ELSE 0
END) AS pg13

FROM film;



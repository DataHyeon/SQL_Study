-- SELECT all
SELECT * FROM film;

-- SELECT col
SELECT film_id FROM film;

--  DISTINCT
SELECT DISTINCT rating FROM film;

--  COUNT
SELECT COUNT(DISTINCT rating) FROM film;

-- WHERE
SELECT COUNT(title) FROM film
WHERE rental_rate > 4  AND replacement_cost >= 19.99
AND rating = 'R';

-- WHERE 실습 1
SELECT  email FROM customer
WHERE first_name = 'Nancy' ;

-- WHERE 실습 2
SELECT description FROM film
WHERE title = 'Outlaw Hanky';

-- WHERE 실습 3
SELECT phone FROM address
WHERE address = '259 Ipoh Drive';

-- ORDER BY
SELECT first_name, last_name FROM customer
ORDER BY store_id DESC, first_name ASC;

-- LIMIT
SELECT * FROM payment
WHERE amount != 0
ORDER BY payment_date DESC
LIMIT 5; 

-- ORDER BY 실습 1
SELECT customer_id FROM payment
ORDER BY payment_date
LIMIT 10;

-- ORDER BY 실습 2
SELECT title, length FROM film
ORDER BY length
LIMIT 5;

-- ORDER BY 실습 3
SELECT COUNT(title) From film
WHERE length <= 50;

-- BETWEEN
SELECT * FROM payment
WHERE amount BETWEEN 8 AND 9;

SELECT * FROM payment
WHERE payment_date BETWEEN '2007-02-01' AND '2007-02-15';
-- 타임 스탬프의 경우 BETWEEN 경우 그 날짜의 앞 날짜 정보만 추출
-- 2007-02-15경우 02-14 데이터를 출력

-- IN
SELECT COUNT(*) FROM payment
WHERE amount IN (0.99,1.98,1.99);

SELECT * FROM customer
WHERE first_name IN ('John', 'Jake');


-- LIKE
SELECT * FROM customer
WHERE first_name LIKE 'J%' AND last_name LIKE 'S%';

SELECT * FROM customer
WHERE first_name LIKE '%er%';

-- ILIKE
SELECT * FROM customer
WHERE first_name ILIKE 'j%' AND last_name LIKE 's%';

SELECT * FROM customer
WHERE first_name NOT ILIKE 'j%' AND last_name LIKE 'A%'
ORDER BY last_name;














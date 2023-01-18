-- 수리함수
SELECT ROUND(rental_rate/replacement_cost,4)*100 AS percent_cost
FROM film;

SELECT 0.1 * replacement_cost AS deposit
FROM film;

-- 문자열 함수
SELECT first_name || ' ' || last_name AS full_name 
FROM customer;

SELECT upper(first_name) || ' ' || upper(last_name) AS full_name 
FROM customer;

SELECT LOWER(LEFT(first_name, 1) || last_name || '@gmail.com') AS email
FROM customer
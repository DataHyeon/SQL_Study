--  CASE

-- ex)
-- CASE
-- 	WHEN a = con1 THEN r1
-- 	WHEN a = con2 THEN r2
-- 	ELSE r3 AS Result
-- END

-- CASE a
-- 	WHEN con1 THEN r1
-- 	WHEN con2 THEN r2
-- 	ELSE r3 AS Result
-- END

SELECT customer_id,
CASE 
	WHEN customer_id <= 100 THEN 'Premium'
	WHEN customer_id BETWEEN 100 and 200 THEN 'Plus'
	ELSE 'Nomal'
END AS customer_class
FROM customer;

SELECT customer_id,
CASE customer_id
	WHEN 2 THEN 'Winner'
	WHEN 5 THEN 'Second Place'
	ELSE 'Normal'
END AS raffle_results
FROM customer;

SELECT * FROM film;

SELECT
SUM(CASE rental_rate
	WHEN 0.99 THEN 1
	ELSE 0
END) AS number_of_bargains
FROM film;
-- GROUP BY로eh 만들수 있음

SELECT
SUM(CASE rental_rate
	WHEN 0.99 THEN 1
	ELSE 0
END) AS number_of_bargains,

SUM(CASE rental_rate
   WHEN 2.99 THEN 1
   ELSE 0
END) AS regular,

SUM(CASE rental_rate
   WHEN 4.99 THEN 1
   ELSE 0
END) AS premium

FROM film;





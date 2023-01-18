-- 연습문제
-- 1
SELECT DISTINCT(TO_CHAR(payment_date, 'MONTH')) FROM payment;

-- 2
SELECT COUNT(*) FROM payment
WHERE EXTRACT(dow FROM payment_date) = 1;

SELECT COUNT(*) FROM payment
WHERE TO_CHAR(payment_date, 'dy') = 'mon';
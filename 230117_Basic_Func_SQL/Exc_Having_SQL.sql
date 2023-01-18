-- 연습문제 HANING

-- 1
-- 결제거래건수 40건 이상 고객 ID
SELECT customer_id, COUNT(amount) FROM payment
GROUP BY customer_id
HAVING COUNT(amount) >= 40;

-- 2
-- 직원2와 100달러 이상 거래한 고객 ID
SELECT customer_id, SUM(amount) FROM payment
WHERE staff_id = 2
GROUP BY customer_id
HAVING SUM(amount) >= 100;
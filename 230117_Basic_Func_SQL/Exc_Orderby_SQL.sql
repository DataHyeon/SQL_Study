-- 연습문제 ORDER BY

-- 1
-- 스태프 아이디 1,2 결제건수 
SELECT staff_id, COUNT(amount) from payment
GROUP BY staff_id
ORDER BY COUNT(amount) DESC;

-- 2
-- 영화 등급별 평균 교체비용
SELECT rating, AVG(replacement_cost) FROM film
GROUP BY rating;

-- 3
-- 상위 5명 총 지출액 고객 ID
SELECT customer_id, SUM(amount) FROM payment
GROUP BY customer_id
ORDER BY SUM(amount) DESC
LIMIT 5;
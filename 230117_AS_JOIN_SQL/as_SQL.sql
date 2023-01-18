-- Join
-- 여러개의 데이블 연결
-- AS로 별칭 생성, WHERE, HANING절에서는 사용 불가
-- 이너,아웃터, 풀, 유니온, 레프트, 라이트 조인

--  AS
SELECT SUM(amount) AS net_revenue FROM payment;

SELECT COUNT(amount) AS num_transactions FROM payment;

SELECT customer_id, SUM(amount) AS total_spent FROM payment
GROUP BY customer_id
HAVING SUM(amount) > 100;
-- HAVING total_spent > 100; X

SELECT customer_id, amount AS new_name FROM payment
WHERE amount > 2;
-- WHERE new_name > 2; X
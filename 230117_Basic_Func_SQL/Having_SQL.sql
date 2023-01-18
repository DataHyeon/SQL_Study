-- Having
-- having 절에는 앞에 있는 명령문이 다 실행다고 이후에 조건을 주는 것과 같다
-- where 절에서는 전체에 대한 조건이기에 집계함수에 대한 조건을 줄 수 없다

SELECT customer_id, SUM(amount)  FROM payment
-- WHERE customer_id NOT IN (184, 87, 477)
GROUP BY customer_id
HAVING SUM(amount) > 100;

SELECT store_id, COUNT(customer_id)  FROM customer
GROUP BY store_id
HAVING COUNT(customer_id) > 300;
-- 연습문제 JOIN

-- 1
-- 캘리포니아에 사는 고객 이메일
-- district - address
-- email - customer
-- address_id - 공통
SELECT district, customer.email FROM address
INNER JOIN customer
ON customer.address_id = address.address_id
WHERE district = 'California';

-- 2
-- 닉 윌버그 배우 출연한 모든 영화 목록
SELECT title, first_name, last_name 
FROM film_actor INNER JOIN actor ON film_actor.actor_id = actor.actor_id
INNER JOIN film
ON film_actor.film_id = film.film_id
WHERE first_name = 'Nick' and last_name = 'Wahlberg';

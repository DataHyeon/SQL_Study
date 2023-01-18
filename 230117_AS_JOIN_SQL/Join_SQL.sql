-- Join

-- 이너조인 : 각 테이블에서 겹치는 정보만 합침
-- EX)
-- SELECT * FROM Table_A
-- INNER JOIN Table_B
-- ON Table_A.name1 = Table_B.name2 ; name1, name2에서 겹치는 정보만 출력 

-- SELECT reg_id, Table_B.name2, log_id FROM Table_A
-- INNER JOIN Table_B
-- ON Table_A.name1 = Table_B.name2 ; name1, name2에서 겹치는 정보가 생김 특정 테이블에서만 가져오는 명령 추가

-- payment, customer 테이블 결합

SELECT * FROM payment
INNER JOIN customer
ON payment.customer_id = customer.customer_id;

SELECT payment_id, payment.customer_id, first_name FROM payment
INNER JOIN customer
ON payment.customer_id = customer.customer_id;

-- 아웃터조인 : 풀, 레트프, 라이트

-- 풀 아웃터 조인
-- EX)
-- SELECT * FROM Table_A
-- FULL OUTER JOIN Table_B
-- ON Table_A.name1 = Table_B.name2 ; name1, name2의 값을 기준으로 모든 정보 합침
-- : 없는 정보는 Null 처리

-- SELECT * FROM Table_A
-- FULL OUTER JOIN Table_B
-- ON Table_A.name1 = Table_B.name2 ; name1, name2의 값을 기준으로 모든 정보 합침
-- WHERE Table_A.name1 is null OR Table.id is null ; 겹치지 않는 각 테이블의 고유한 정보만 출력

-- payment, customer 테이블 결합

SELECT * FROM customer
FULL OUTER JOIN payment
ON customer.customer_id = payment.customer_id
WHERE customer.customer_id IS null
OR payment.payment_id IS null;

-- 레프트 조인 : 왼쪽 테이블 기준으로 오른쪽에만 있는 값들은 출력하지 않음, null처리 
-- EX)
-- SELECT * FROM Table_A
-- LEFT (OUTER) JOIN Table_B
-- ON Table_A.name1 = Table_B.name2

-- SELECT * FROM Table_A
-- LEFT OUTER JOIN Table_B
-- ON Table_A.name1 = Table_B.name2
-- WHERE Table_B.id is null ; 테이블 A에만 있는 고유한 값 출력

-- film, inventory 테이블 결합

SELECT film.film_id, title, inventory_id, store_id FROM film
LEFT JOIN inventory 
ON inventory.film_id = film.film_id
WHERE inventory.film_id IS null;

-- 라이트 조인 : 오른쪽 테이블 기준으로 왼쪽에만 있는 값들은 출력하지 않음, null처리 
-- EX)
-- SELECT * FROM Table_A
-- RIGHT (OUTER) JOIN Table_B
-- ON Table_A.name1 = Table_B.name2

-- SELECT * FROM Table_A
-- RIGHT OUTER JOIN Table_B
-- ON Table_A.name1 = Table_B.name2
-- WHERE Table_A.id is null ; 테이블 B에만 있는 고유한 값 출력

-- film, inventory 테이블 결합

SELECT film.film_id, title, inventory_id, store_id FROM film
RIGHT JOIN inventory 
ON inventory.film_id = film.film_id
WHERE film.film_id IS null

-- 유니온
-- EX)
-- SELECT col_name(s) FROM table_A
-- UNION
-- SELECT col_name(s) FROM table_B;

-- SELECT col_name(s) FROM table_A
-- UNION
-- SELECT col_name(s) FROM table_B
-- ORDER BY name;




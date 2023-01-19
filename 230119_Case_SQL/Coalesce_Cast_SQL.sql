-- COALESCE
-- 무한한 수의 아규먼트를 쓸 수 있는 기능
-- 처음 NULL이 없는 값을 반환

-- ex)
SELECT COALESCE(NULL, 2, 3);
-- => 2

-- NULL값을 가진 쿼리를 실행할 때 유용
-- NULL값을 가진 컬럼과 계산을 하면 NULL 값이 나옴

-- ex)
-- SELECT item, (price-COALESCE(discount, 0)) AS final
-- FROM tableA;

-- CAST
-- 데이터 유형을 바꿔줌 str->int
-- 모든 데이터 타입을 바꿀 수는 없음

-- ex)
-- SELECT CAST('5' AS INTEGER)
-- SELECT '5'::INTEGER -- postgre

SELECT CAST('5' AS INTEGER) AS new_int;
SELECT '5'::INTEGER AS new_int;

SELECT CAST(inventory_id AS VARCHAR) FROM rental;

SELECT CHAR_LENGTH(CAST(inventory_id AS VARCHAR)) FROM rental;
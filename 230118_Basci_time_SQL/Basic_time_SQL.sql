-- 타임 스탬프와 추출
-- TIME : 시간
-- DATE : 년 원 일의 날짜
-- TIMESTAMP : 날짜 시간
-- TIMESTAMPTZ : 표준시간대

-- TIMEZONE : 표준시간대
-- NOW : 현재
-- TIMEOFDAY : 시계 시각
-- CURRENT_TIME : 현재 시각
-- CURRENT_DATE : 현재 날짜

-- SHOW 셋팅값 보여줌
SHOW ALL; -- 전체 셋팅 정보
SHOW TIMEZONE ;

SELECT NOW(); -- 현재 시간
SELECT TIMEOFDAY(); -- 요일과 날짜와 시간을 보여줌
SELECT CURRENT_DATE ;

-- EXTRACT()
-- 년,월,일,주차,분기를 추출할 수 있음
-- EXTRACT(YEAR FROM date_col)

-- AGE()
-- 검색 스탬프에서 현재까지의 시기를 계산해줌
-- AGE(date_col)

-- TO_CHAR()
-- 일자 유형을 글자로 바꿔주는 함수
-- TO_CHAR(data_col, 'mm-dd-yyyy')

SELECT * FROM payment;

SELECT EXTRACT(YEAR FROM payment_date)
FROM payment;

SELECT EXTRACT(MONTH FROM payment_date)
FROM payment;

SELECT AGE(payment_date)
FROM payment;

SELECT TO_CHAR(payment_date, 'mm-dd-yyyy')
FROM payment;

SELECT TO_CHAR(payment_date, 'Mon/dd/YYYY')
FROM payment;

SELECT EXTRACT(YEAR FROM payment_date), EXTRACT(MONTH FROM payment_date)
FROM payment;
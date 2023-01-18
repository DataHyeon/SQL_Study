-- 셀프조인
-- as 사용
-- SELECT tableA.col, tableB.col
-- FROM table_ AS talbeA
-- JOIN table_ AS tableB 
-- ON tableA.some_col = tabelB.other_col

-- SELECT emp.name, report.name 
-- FROM employee AS emp
-- JOIN employee AS report
-- ON emp.emp_id = report.emp_id

SELECT f1.title, f2.title, f1.length
FROM film AS f1
INNER JOIN film AS f2
ON f1.film_id != f2.film_id
AND f1.length = f2.length

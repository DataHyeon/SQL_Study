-- NULLIIF

-- ex)
-- NULLIF(arg1, arg2)
-- => arg1 == arg2 : NULL
-- => arg1 != arg2 : arg1

-- CREATE TABLE depts(
-- first_name VARCHAR(50),
-- department VARCHAR(50)
-- );

-- INSERT INTO depts(
-- first_name, department)
-- VALUES
-- ('vinton', 'A'),
-- ('lauren', 'A'),
-- ('claire', 'B');

SELECT * FROM depts;

-- 비율계산

-- SELECT
-- (SUM(CASE WHEN department ='A' THEN 1 ELSE 0 END)/
-- SUM(CASE WHEN department ='B' THEN 1 ELSE 0 END)) AS dept_ratio
-- FROM depts;

-- DELETE FROM depts
-- WHERE department ='B';

SELECT
(SUM(CASE WHEN department ='A' THEN 1 ELSE 0 END)/
NULLIF(SUM(CASE WHEN department ='B' THEN 1 ELSE 0 END), 0)
) AS dept_ratio
FROM depts;

-- ISNULL(arg1, arg2)
-- => arg1 = NULL : arg2
-- => arg2 != NULL : agr1




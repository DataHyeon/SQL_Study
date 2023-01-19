-- Drop

-- ex)
-- ALTER TABLE table_name
-- DROP COLUMN col_name CASCADE -- col_name과 연관된 테이블의 값까지 삭제

-- ALTER TABLE table_name
-- DROP COLUMN IF EXISTS col_name -- col_name이 있으면 삭제

-- ALTER TABLE tabel_name
-- DROP COLUMN col1
-- DROP COLUMN col2

ALTER TABLE new_info
DROP COLUMN people;

SELECT * FROM new_info;

ALTER TABLE new_info
DROP COLUMN IF EXISTS people;

ALTER TABLE new_info
ADD COLUMN people VARCHAR(500);

SELECT * FROM new_info
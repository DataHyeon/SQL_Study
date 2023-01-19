-- Alter
-- Table 구조 변경

-- ex)
-- ALTER TABLE table_name

-- ALTER COLUMN col_name
-- SET DEFAULT value
-- or
-- SET NOT NULL
-- or
-- DROP DEFAULT
-- or
-- ADD CONSTRAINT constraint_name
-- or
-- DROP COLUMN col_name

CREATE TABLE information(
	iofo_id SERIAL PRIMARY KEY,
	title VARCHAR(500) NOT NULL,
	person VARCHAR(50) NOT NULL UNIQUE
);

ALTER TABLE information
RENAME TO new_info;

ALTER TABLE new_info
RENAME COLUMN person TO people;

ALTER TABLE new_info
ALTER COLUMN people DROP NOT NULL;

INSERT INTO new_info(title)
VALUES('some new title')
RETURNING title;


-- CHECK_제약조건

-- ex)
-- CREATE TABLE example(
-- 	ex_id SERIAL PRIMARY KEY,
-- 	age SMALLINT CHECK (age>21),
-- 	parent_age SMALLINT CHECK(
-- 	parent_age > age)
-- 	);

CREATE TABLE employees(
	emp_id SERIAL PRIMARY KEY,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	birthdate DATE CHECK (birthdate > '1900-01-01'),
	hire_date DATE CHECK (hire_date > birthdate),
	salary INTEGER CHECK (salary > 0)
)

INSERT INTO employees(
first_name, last_name, birthdate, hire_date, salary)
VALUES
('Sammy', 'Smith', '1999-11-03', '2010-01-01', 100);

SELECT * FROM employees;
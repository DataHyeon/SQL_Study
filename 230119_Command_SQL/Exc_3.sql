CREATE TABLE students(
student_id SERIAL PRIMARY KEY NOT NULL,
first_name VARCHAR(100),
last_name VARCHAR(100),
homeroom_number INTEGER,
phone VARCHAR(30) UNIQUE NOT NULL,
email VARCHAR(250) UNIQUE NOT NULL,
graduation_year TIMESTAMP );

CREATE TABLE teachers(
teacher_id SERIAL PRIMARY KEY NOT NULL,
first_name VARCHAR(100),
last_name VARCHAR(100),
homeroom_number INTEGER,
department VARCHAR(100),
email VARCHAR(30) UNIQUE NOT NULL,
phone VARCHAR(250) UNIQUE NOT NULL
);

INSERT INTO students(
phone, first_name, last_name, graduation_year, homeroom_number)
VALUES(
'777-555-1234', 'Mark', 'Watney', '2035-02-28', 5);

INSERT INTO teachers(
homeroom_number, first_name, last_name, email, phone)
VALUES(
5, 'Jonas', 'Salk', 'jsalk@school.org', '777-555-4321'
);

SELECT * FROM teachers;
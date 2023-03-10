-- 1
SELECT COUNT(amount) FROM payment
WHERE amount >= 5;

-- 2
SELECT COUNT(first_name) FROM actor
WHERE first_name LIKE 'P%';

-- 3
SELECT COUNT(DISTINCT(district)) FROM address;

-- 4
SELECT DISTINCT(district) FROM address;

-- 5
SELECT COUNT(title) FROM film
WHERE rating ='R'
AND replacement_cost BETWEEN 5 AND 15;

-- 6
SELECT COUNT(*) FROM film
WHERE title LIKE '%Truman%';
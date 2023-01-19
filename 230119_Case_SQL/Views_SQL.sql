-- Views
-- 간단한 쿼리를 따로 보여주는 역할

CREATE VIEW customer_info AS 
SELECT first_name, last_name, address FROM customer
INNER JOIN address
On customer.address_id = address.address_id;

SELECT * FROM customer_info;

CREATE OR REPLACE VIEW customer_info  AS
SELECT first_name, last_name, address, district FROM customer
INNER JOIN address
On customer.address_id = address.address_id;

SELECT * FROM customer_info;

DROP VIEW IF EXISTS customer_info;

ALTER VIEW customer_info RENAME TO c_info;
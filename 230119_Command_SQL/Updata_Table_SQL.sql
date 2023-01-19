-- INSERT

-- ex)
-- UPDATE account
-- SET last_login = CURRENT_TIMESTAMP
-- WHERE last_login IS NULL;

-- UPDATE TableA
-- SET col1 = TableB.col2
-- FROM TableB
-- WHERE TableA.col = TableB.col;

UPDATE account
SET last_login = created_on
RETURNING account_id, last_login; -- 바뀐 결과를 보여줌

SELECT * FROM account;

UPDATE account
SET last_login = CURRENT_TIMESTAMP;

UPDATE account
SET last_login = created_on;

UPDATE account_job
SET hire_date = account.created_on
FROM account
WHERE account_job.user_id = account.user_id;

SELECT * FROM account;

UPDATE account
SET last_login = CURRENT_TIMESTAMP
RETURNING email, created_on, last_login;
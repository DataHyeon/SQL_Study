-- DELETE

-- ex)
-- DELETE FROM talbeA
-- WHERE ~

-- DELETE FROM talbeA
-- USING tableB
-- WHERE tableA.id = tableB.id
-- RETUNING a,b,c

SELECT * FROM job;
INSERT INTO job(job_name)
VALUES('Cowboy');

DELETE FROM job
WHERE job_name = 'Cowboy'
RETURNING job_id, job_name;

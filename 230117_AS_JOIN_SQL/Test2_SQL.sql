-- 테스트 2

-- 1
SELECT * FROM cd.facilities;

-- 2
SELECT name, membercost FROM cd.facilities;

-- 3
SELECT name, membercost FROM cd.facilities
WHERE membercost > 0;

-- 4
SELECT facid, name, membercost, monthlymaintenance FROM cd.facilities
WHERE membercost > 0 
AND membercost < monthlymaintenance/50;

-- 5
SELECT * FROM cd.facilities
WHERE name ILIKE '%tennis%' ;-- ILIKE 대소문자 구분 x

-- 6
SELECT * FROM cd.facilities
WHERE facid = 1 OR facid = 5;
--  == WHERE facid IN (1,5)

-- 7
SELECT memid, surname, firstname, joindate FROM cd.members
WHERE joindate >= '2012-09-01';

-- 8
SELECT DISTINCT(surname) FROM cd.members
ORDER BY surname
LIMIT 10 ;

-- 9
SELECT * FROM cd.members
ORDER BY joindate DESC
LIMIT 1 ;
-- == SELECT MAX(joindate) FROM cd.members;

-- 10
SELECT COUNT(*) FROM cd.facilities
WHERE guestcost >= 10;

-- 11
SELECT facid, SUM(slots) AS total_slots
FROM cd.bookings
WHERE starttime >= '2012-09-01' AND
starttime <= '2012-10-01'
GROUP BY facid
ORDER BY SUM(slots);

-- 12
SELECT cd.facilities.name, b.facid, SUM(slots) FROM cd.bookings AS b
INNER JOIN cd.facilities
ON b.facid = cd.facilities.facid
GROUP BY cd.facilities.name, b.facid
HAVING SUM(slots) > 1000
ORDER BY SUM(slots) DESC;

-- 13
SELECT starttime, name FROM cd.bookings AS b
INNER JOIN cd.facilities AS c
ON b.facid = c.facid
WHERE starttime BETWEEN '2012-09-21' AND '2012-09-22'
AND name ILIKE '%tennis court%';

-- 14
SELECT members.firstname || ' ' || members.surname AS name, starttime FROM cd.bookings AS b
INNER JOIN cd.members AS members
ON members.memid = b.memid
WHERE surname = 'Farrell' AND firstname = 'David'






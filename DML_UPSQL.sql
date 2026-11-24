
/*SELECT *
FROM dbo.orders*/

/*DML - UPDATE-- CHANGE THE SCOR OF CUSTOMER WITH ID 6 TO 0*/

UPDATE dbo.customers
SET score = 0
WHERE id=6

SELECT *
FROM dbo.customers
WHERE id=6

/*CHANGE THE SCORE OF CUSTOMER WITH ID 10 TO 0 AND UPDATE THE CUNTRY TO UK*/

UPDATE dbo.customers
SET 
	score =0,
	country = 'UK'
WHERE id=10

SELECT *
FROM dbo.customers
WHERE id = 10

/*UPDATE ALL CUSTOMERS WITH COUNTRIES NULL 0 TO KENEYA*/

UPDATE dbo.customers
SET country ='Keneya'
WHERE country IS NULL

SELECT *
FROM dbo.customers
WHERE country = 'Keneya'


/*DELETE A ROW FROM A TABLE */

DELETE FROM dbo.customers
WHERE id =10

SELECT *
FROM dbo.customers

/*DELETE ALL CUSTOMERS WITH ID > 5*/
DELETE dbo.customers
WHERE id >5

SELECT *
FROM dbo.customers

/*DELETE DATA FROM PERSONS TABLE*/

SELECT *
FROM dbo.persons
-- use delete for small table
-- TRUNCATE for large tables

TRUNCATE TABLE dbo.persons




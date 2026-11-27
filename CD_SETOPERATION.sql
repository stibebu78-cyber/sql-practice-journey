
/*RULES OF SET OPERATORS*/
SELECT 
	firstname,
	lastname
FROM dbo.customers

UNION

SELECT 
	firstname,
	lastname
FROM dbo.employees

/*1) UNION 
EX- COMBINE THE DATA FROM CUSTOMERS AND EMPLOYEE IN ONE TABLE
*/

SELECT 
	firstname,
	lastname
FROM dbo.customers
UNION ALL
SELECT 
	firstname,
	lastname
FROM dbo.employees

/*2) UNION ALL:
 generally faster than union
 if u r confident there are no duplicates, use UNION ALL
 Use UNION ALL TO FIND DUPLICATES AND QUALITY ISSUES

*/
-- Combine data fro the two tables including duplicates

SELECT 
	firstname,
	lastname
FROM dbo.customers
UNION ALL
SELECT 
	firstname,
	lastname
FROM dbo.employees

/*3) EXCEPT*/
-- EX- FIND CUSTOMERS WHO ARE NOT EMPLOYEE AT THE SAME TIME
SELECT 
	firstname,
	lastname
FROM dbo.customers
EXCEPT
SELECT 
	firstname,
	lastname
FROM dbo.employees

-- CHANGE THE ORDER OF THE QUIRY
-- EX- FIND EMPLOYEES  WHO ARE NOT CUSTOMERS AT THE SAME TIME
SELECT 
	firstname,
	lastname
FROM dbo.employees
EXCEPT
SELECT 
	firstname,
	lastname
FROM dbo.customers

/*4) INTERSECTS
FIND EMPLOYEES WHO ARE ALSO CUSTOMERS
*/

SELECT 
	firstname,
	lastname
FROM dbo.employees
INTERSECT

SELECT 
	firstname,
	lastname
FROM dbo.customers;

/*example - order data are stored in separate tables/order and order archives). 
combine order data in one table*/

SELECT 
      [orderid]
      ,[productid]
      ,[customerid]
      ,[salespersonid]
      ,[orderdate]
      ,[shipdate]
      ,[orderstatus]
      ,[shipaddress]
      ,[billaddress]
      ,[quantity]
      ,[sales]
      ,[creationtime]
FROM dbo.orders
UNION ALL
SELECT 
       [orderid]
      ,[productid]
      ,[customerid]
      ,[salespersonid]
      ,[orderdate]
      ,[shipdate]
      ,[orderstatus]
      ,[shipaddress]
      ,[billaddress]
      ,[quantity]
      ,[sales]
      ,[creationtime]
FROM dbo.orders_archive
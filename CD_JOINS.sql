/*1) NO JOIN 
Example1. retrive all data from vustomers and orders into different results

*/

SELECT *
FROM dbo.customers; 

SELECT *
FROM dbo.orders;

/* 2) INNER JOIN: reterns only the matching row from both tables.
Example - get all customers along with their orders, but only for customers who have placed an order
*/

SELECT *
FROM dbo.customers
INNER JOIN orders
ON id = customer_id

/*only retain the columns you need to avoid repitions of collumns like id in the customers table 
and customers id in the customers table are the same*/

SELECT 
	customers.id,
	first_name,
	orders.order_id,
	sales
FROM dbo.customers
INNER JOIN orders
ON id = customer_id

/*best practice is to tell which column comes from which table*/

SELECT
customers.id,
customers.first_name,
orders.order_id,
orders.sales

FROM dbo.customers
INNER JOIN orders
ON customers.id = orders.customer_id

/* how to shorten long table names first assign infront as As*/

SELECT
	c.id,
	c.first_name,
	o.order_id,
	o.sales

FROM dbo.customers As c
INNER JOIN orders As o
ON c.id = o.customer_id

/*3) LEFT JOIN 
Example: Get all customers along with their orders, including those without orders
*/
SELECT 
c.id,
c.first_name,
o.order_id,
o.sales
FROM dbo.customers As c
LEFT JOIN dbo.orders As o
ON c.id = o.customer_id

/*RIGHT JOIN
Get all customers along with their orders including orders without muching customers
*/

SELECT 
c.id,
c.first_name,
o.order_id,
o.sales
FROM dbo.customers As c
RIGHT JOIN dbo.orders As o
ON id =o.customer_id

/*FULL JOIN 
EXAM- Get all customers and all orders even if there is no match
*/

SELECT 
	c.id,
	c.first_name,
	o.order_id,
	o.sales
FROM dbo.customers As c
FULL JOIN dbo.orders As o
ON id = o.customer_id

/*ADVANCED SQL JOIN 
1) LEFT ANTIJOIN
GET ALL CUSTOMERS WHO HAVE NOT PLACED ANY ORDER
*/

SELECT 
	c.id,
	c. first_name,
	o. order_id,
	o. sales
FROM dbo.customers As c
LEFT JOIN dbo.orders As o
ON id= customer_id
WHERE customer_id IS NULL

/*RIGHT ANTI JOIN 
EX- GET ALL ORDERS WITH OUT MATCHING CUSTOMERS 
*/

SELECT 
	c.id,
	c.first_name,
	o.order_id,
	o.sales
FROM dbo.customers As c
RIGHT JOIN dbo.orders As o
ON c.id= o.customer_id
WHERE c.id IS NULL

/*GET ALL ORDERS WITH OUT MATCHING CUSTOMERS USING LEFT JOIN*/
SELECT *
FROM dbo.orders As o
LEFT JOIN dbo.customers As c
ON c.id = o.customer_id
WHERE id IS NULL

/*FULL JOIN
FIND CUSTOMERS WITH OUT ORDERS AND ORDERS WITH OUT CUSTOMERS
*/

SELECT *
FROM dbO.customers As c
FULL JOIN dbo.orders As o
ON c.id = o.customer_id

WHERE 
	c.id IS NULL
	OR
	o.customer_id IS NULL

/*GET ALL CUSTOMERS ALONG WITH THEIR ORDERS BUT ONLY FOR CUSTOMERS 
WHO HAVE PLACED AN ORDER. gut with out using inner join. 
has similar output as the inner join
*/

SELECT *
FROM dbo.customers As c
LEFT JOIN dbo.orders As o
ON c.id = o.customer_id
WHERE 
o.customer_id IS NOT NULL

/*CROSS JOIN 
EX-generate all possible combination of customers and orders
rarly used, can be used like in product color combination
*/
SELECT *
FROM dbo.customers
CROSS JOIN dbo.orders

/*MULTI JOIN
USING SALES DB, RETRIVE LIST OF ALL ORDERS ALONG WITH RELATED CUSTOMORS, PRODUCT AND EMPLOY DETAIL. 
FOR EACH ORDER DISPLAY: order id, customers name, product name,sales, price, sales person name 
*/

SELECT 
	o.orderid,
	o.sales,
	c. firstname As Customer_firstName,
	c.lastname As Customer_lastName,
	p.product As productName,
	p.price As product_price, 
	e.firstname As	Employyee_firstName,
	e.lastname As	Employyee_lastName
FROM dbo.orders As o
LEFT JOIN dbo.customers As c
ON o.customerid = c.customerid
LEFT JOIN dbo.products As p
ON o.productid = p.productid
LEFT JOIN dbo.employees AS e
ON o.salespersonid = e.employeeid
















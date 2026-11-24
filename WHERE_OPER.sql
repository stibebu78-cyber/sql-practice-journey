/*WHERE OPERATORS: 1) COMPARISON OPERATORS*/

SELECT *
FROM dbo.customers

/* A) COMPARISON OPERATORS: 1) = operator
EXAMPLE=retrive all customers from germeny

*/

SELECT *
FROM dbo.customers
WHERE country ='Germany'

/*<> or != */

SELECT *
FROM dbo.customers
WHERE score <> 100

/*EXAMPLE: retrive all customers who are not from germany*/

SELECT *
FROM dbo.customers
WHERE country !='Germany'


/*> : checks if value greater than another value*/

SELECT *
FROM dbo.customers
WHERE score > 500

/* >= : checks if the value is greater than or equal to another value*/

SELECT *
FROM dbo.customers
WHERE score >=500

/* < : checks if a value is less than another value*/

SELECT *
FROM dbo.customers
WHERE score < 750

/* <= : checks if the value is less than or equal to another value*/

SELECT *
FROM dbo.customers
WHERE score <= 750

/*B) LOGICAL OPERATORS: 1) AND  2) OR  3) NOT

1) AND - All the conditions must be true
Retrive all customers from USA and score > 500
*/
SELECT *
FROM dbo.customers
WHERE country = 'USA' and score >500

/* 2) OR - At least one condition must be true.
EX- Retrive all customers who are either from the USA or have a score greater than 500
*/

SELECT *
FROM dbo.customers
WHERE country='USA' or score > 500

/* 3) NOT : excludes matching values
EX- Retrive all customers with a score not less than 500
*/

SELECT *
FROM dbo.customers
WHERE NOT score < 500

/*C) RANGE OPERATOR: 1) BETWEEN
Example- Retrive all customers whose scores falls between falls between 100 and 500
*/

SELECT *
FROM dbo.customers
WHERE score >= 100  AND score < = 500

SELECT *
FROM dbo.customers
WHERE score BETWEEN 100 AND 500 


/* D) MEMBERSHIP OPERATOR: 1) IN  2) NOT IN 
1) IN - Checks if a value exists in a list. i.e prepare your own list and check weather 
the value of the list is in your table.

ex- retrive all customers from either from germany or USA
*/

SELECT *
FROM dbo.customers
WHERE country = 'USA' OR country = 'Germany'

SELECT *
FROM dbo.customers
WHERE country IN ('USA', 'Germany')

/* 2) - NOT IN - Not in the list*/

SELECT *
FROM dbo.customers
WHERE country NOT IN ('Germany','USA')

/* E) SEARCH OPERATOR: 1) LIKE 
LIKE - search for a pattern in your text

Example 1 - find all customers whose name starts with M
*/

SELECT *
FROM dbo.customers
WHERE first_name LIKE 'M%'

/* Example 2: find all customers whose name ends with n*/

SELECT *
FROM dbo.customers
WHERE first_name LIKE '%n'

/* Example 3: find all customers whose first name contains r*/

SELECT *
FROM dbo.customers
WHERE first_name LIKE '%r%'

/* Example 4: find all customers whose first name has r in the 3rd position */

SELECT *
FROM dbo.customers
WHERE first_name LIKE '__r%'

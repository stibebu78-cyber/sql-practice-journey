-- select few columns from the data base

SELECT id, 
      first_name 
FROM dbo.customers

/* retrive each customers name, country and score. 
the order in the table according to the order in the select*/
SELECT 
    first_name,
    score, 
    country
FROM dbo.customers

/* WHERE clause - examples: 
    1) retrive customers with a score not equal to 0*/
SELECT 
    first_name,
    score
FROM dbo.customers
WHERE SCORE != 0

-- 2. retrive customers from germeny also include column selection
SELECT 
    first_name,
    country
FROM dbo.customers
WHERE country = 'Germany'

/*ORDER BY - RETRIVE ALL CUSTOMERS AND SORT THE RESULTS BY THE HIGEST SCORE FIRST*/

SELECT *
FROM dbo.customers
ORDER BY score DESC

/*(Nested)ORDER BY - RETRIVE ALL CUSTOMERS(i.e alphabetically) AND SORT THE RESULTS 
    BY THE COUNTRY AND THEN BY THEHIGEST SCORE FIRST*/

SELECT *
FROM dbo.customers
ORDER BY 
    country DESC,
    score ASC


/*GROUP BY- */

SELECT 
country,
sum(score) As total_score
FROM dbo.customers
GROUP BY country

/*If you want all the columns to appear in addition to aggregate 
column. List all those non aggregate 
column under SELECT as well as under GROUP BY*/

SELECT 
    id,
    first_name,
    country,
    SUM(score)
FROM dbo.customers
GROUP BY 
    id,
    first_name,
    country

/* GROUP BY - EXE 1- FIND TOTAL SCORE AND TOTAL NUMBER OF CUSTOMER FOR EACH COUNTRY*/

SELECT 
    COUNT(id) As total_number,
    country,
    SUM(score) As total_score

FROM dbo.customers
GROUP BY 
    country

/*HAVING clause - it:1) filters data after agreggation  2) Used only with GROUP BY 
i.e consider having clause if u used GROUP BY and always comes after it*/

SELECT 
    country,
    SUM(score) As total_score
FROM dbo.customers
GROUP BY country
HAVING SUM(score)>800

/*FIND THE AVERAGE SCORE FOR EACH COUNTRY CONSIDERING ONLY CUSTOMERS SCORES NOT EQUAL TO 0 
AND RETURN ONLY THOSE COUNTRIES WITH AN AVERAGE SCORE GREATER THAN 430*/

SELECT 
    country,
    AVG(score) As Avg_score
FROM dbo.customers
WHERE score !=0
GROUP BY country
HAVING AVG(score)>430

 /*DISTINCT - Removes duplicates (repeated values) Each value appears only once. 
 Example 1: return unique list of all countries */ 
 
SELECT Distinct country
FROM dbo.customers

/*TOP
ex1: Retrive only 3 customers. */
SELECT TOP 3 * 
FROM dbo.customers

--Exa 2- retrive the top 3 customers with the higest scores

SELECT TOP 3*
FROM dbo.customers
ORDER BY SCORE DESC

--Exa 2- retrive the top 3 customers with the higest scores

SELECT TOP 3*
FROM dbo.customers
WHERE score!=0
ORDER BY score asc

-- EXA 3: get the 3 most recent orders

SELECT TOP 3*
FROM dbo.orders
ORDER BY order_date asc

-- STATIC OR FIXED VALUES
SELECT 123 As fixed_number;

SELECT 'Hello' As fixed_string

/* example: id, first name comes from the data base and customer type new customor comes from us*/

SELECT 
id, 
first_name,
country,
'New customer'As Customer_type
FROM dbo.customers

/*HIGHLIGHT AND EXCUTE. LOOK AT THE EXUTION RESULT BY HIGHLITING AND WITH 
OUT HIGHLITING THE select and from clauses */

SELECT *
FROM dbo.customers
WHERE country ='Germany';

/* look at the difference by selecting and deselecting. without selecting no out put 
because orders table is not in the Mydatabasw u need to change the data bbase. but with selecting it 
gnerates the table*/
SELECT * 
FROM dbo.orders

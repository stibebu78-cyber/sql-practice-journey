

/*1) INSERT INTO : Adding rows to a new table(a table having only a column name). 
Or inserting additional rows to an existing table. 
before you enter NULL check weather the data base alow NULL*/

INSERT INTO dbo.customers(id, first_name, country, score)
VALUES
(6,'Solomon','Ethiopia', NULL),
(7,'Amanuel',NULL, 400)


/*select the following syntax and then click excute to see the table with 7 rows, 
otherwise it throws error*/

SELECT *
FROM dbo.customers

INSERT INTO dbo.customers(id, first_name, country, score)
VALUES
(8,'Mahelet','Ethiopia', 770)

SELECT *
FROM dbo.customers

/*Mentioning the columon names is optional. example:*/

INSERT INTO dbo.customers
VALUES
(9,'Mihrtab', NULL, 1000)

SELECT *
FROM dbo.customers

/*if you want to insert values only in 2 columns instead of 4*/
INSERT INTO dbo.customers(id,first_name)
VALUES
(10,'Meseret')

SELECT *
FROM dbo.customers


/*INSERTING DATA FROM ANOTHER TABLE INSTEAD OF MANUALLY.

example - copy data from customers table to persons table*/

-- CREAT AN EMPTY TABEL 

CREATE TABLE dbo.persons(

    id INT NOT NULL,
    persons_name VARCHAR(50) NOT NULL,
    birth_date DATE,
    phone VARCHAR(15) NOT NULL,
    CONSTRAINT pk_persons PRIMARY KEY (id)

) 
INSERT INTO dbo.persons(id, persons_name, birth_date,phone)
-- first write the syntax below then write the above insert into syntax
SELECT
    id,
    first_name,
    NULL, -- b/c no birth date in the customers table 
    'Unknown'  -- b/c phone is unknown in the customers table
FROM dbo.customers

SELECT *
FROM dbo.persons

/*UPDATE*/

/*HOW TO CREATE BRAND NEW TABLE IN A DATA BASE
CREATE - A NEW TABLE CALLED PERSONS WITH COLUMNS ID, PERSONS_NAME, BIRTH_DATE AND PHONE */
CREATE TABLE dbo.persons(
id INT NOT NULL,
    persons_name VARCHAR(50) NOT NULL,
    birth_date DATE,
    phone VARCHAR(15) NOT NULL,
    CONSTRAINT pk_persons PRIMARY KEY (id)

)
SELECT *
FROM dbo.persons

/*ALTER. EXAMPLE- ADD A NEW COLUMN CALLED TO A PERSONS TABLE*/

ALTER TABLE dbo.persons
ADD email VARCHAR(50) NOT NULL

SELECT *
FROM dbo.persons

/* HOW TO BRING THE EMAIL COLUMN TO THE MIDDLE NEXT TO PERSONS NAME?*/
  /*REMOVE - EXAMPLE remove the column phon from the persons table*/ 
ALTER TABLE dbo.persons
DROP COLUMN phone
SELECT *
FROM dbo.persons
/*DELET - Delet the table persons from the data base*/
DROP TABLE dbo.persons


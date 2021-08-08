-- SQL Joins

USE `DATABASE`;

/*
	SQL JOIN
		A JOIN clause is used to combine rows from two or more tables, based on a related column between them.
        
	The basic syntax of the INNER JOIN is as follows:
			SELECT table1.column1, table2.column2...
			FROM table1
			INNER JOIN table2 ON table1.common_field = table2.common_field;
	
    Different Types of SQL JOINs
		Here are the different types of the JOINs in SQL:

		(INNER) JOIN		: Returns records that have matching values in both tables
		LEFT (OUTER) JOIN	: Returns all records from the left table, and the matched records from the right table
		RIGHT (OUTER) JOIN	: Returns all records from the right table, and the matched records from the left table
		FULL (OUTER) JOIN	: Returns all records when there is a match in either left or right table
        Self Join			: A self join is a regular join, but the table is joined with itself.
							  The basic syntax of SELF JOIN is as follows 
											SELECT a.column_name, b.column_name...
											FROM table1 a, table1 b
											WHERE a.common_field = b.common_field;
        
        UNION Operator
			The UNION operator is used to combine the result-set of two or more SELECT statements.
				1. Every SELECT statement within UNION must have the same number of columns
				2. The columns must also have similar data types
				3. The columns in every SELECT statement must also be in the same order
			UNION Syntax
				SELECT column1 [, column2 ]
				FROM table1 [, table2 ]
				[WHERE condition]
				UNION
				SELECT column1 [, column2 ]
				FROM table1 [, table2 ]
				[WHERE condition]
                
		UNION ALL 
			The UNION operator selects only distinct values by default. To allow duplicate values, use UNION ALL:
				Syntax
					SELECT column1 [, column2 ]
					FROM table1 [, table2 ]
					[WHERE condition]
					UNION ALL
					SELECT column1 [, column2 ]
					FROM table1 [, table2 ]
					[WHERE condition]
					
*/

-- 1 : INNER JOIN
SELECT ID ,NAME ,AMOUNT, DATE
FROM CUSTOMER
INNER JOIN ORDERS ON CUSTOMER.ID = ORDERS.CUSTOMER_ID;

-- 2 : LEFT JOIN
SELECT ID ,NAME ,AMOUNT, DATE
FROM CUSTOMER
LEFT JOIN ORDERS ON CUSTOMER.ID = ORDERS.CUSTOMER_ID;

-- 3 : RIGHT JOIN
SELECT ID ,NAME ,AMOUNT, DATE
FROM CUSTOMER
RIGHT JOIN ORDERS ON CUSTOMER.ID = ORDERS.CUSTOMER_ID;

-- 4 : FULL JOIN
SELECT ID ,NAME ,AMOUNT, DATE
FROM CUSTOMER
FULL JOIN ORDERS ON CUSTOMER.ID = ORDERS.CUSTOMER_ID;

-- 5 : SELF JOIN
SELECT  a.ID, b.NAME, a.SALARY
   FROM CUSTOMER a, CUSTOMER b
   WHERE a.SALARY < b.SALARY;
   
-- UNION CLAUSE
SELECT  ID, NAME, AMOUNT, DATE
   FROM CUSTOMER
   LEFT JOIN ORDERS
   ON CUSTOMER.ID = ORDERS.CUSTOMER_ID
UNION
   SELECT  ID, NAME, AMOUNT, DATE
   FROM CUSTOMER
   RIGHT JOIN ORDERS
   ON CUSTOMER.ID = ORDERS.CUSTOMER_ID;
   
-- UNION ALL
SELECT  ID, NAME, AMOUNT, DATE
   FROM CUSTOMER
   LEFT JOIN ORDERS
   ON CUSTOMER.ID = ORDERS.CUSTOMER_ID
UNION ALL
   SELECT  ID, NAME, AMOUNT, DATE
   FROM CUSTOMER
   RIGHT JOIN ORDERS
   ON CUSTOMER.ID = ORDERS.CUSTOMER_ID;
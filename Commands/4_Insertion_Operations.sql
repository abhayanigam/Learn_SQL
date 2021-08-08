-- SQL INSERTION AND OPERATIONS SYNTAX

/*
	The SQL INSERT INTO Statement
		The INSERT INTO statement is used to insert new records in a table.

	Syntax
		It is possible to write the INSERT INTO statement in two ways:

		1. Specify both the column names and the values to be inserted:

		INSERT INTO table_name (column1, column2, column3, ...)
		VALUES (value1, value2, value3, ...);
*/
-- LONG WAY TO INSERT
INSERT INTO `database`.`customer`(`NAME`,`AGE`,`ADDRESS`,`SALARY`) VALUES ('Ramesh', '32', 'Ahmedabad', '2000.00');

INSERT INTO `database`.`customer`(`NAME`,`AGE`,`ADDRESS`,`SALARY`) VALUES ('Khilan', '25', 'Delhi', '1500.00');

INSERT INTO `database`.`customer`(`NAME`,`AGE`,`ADDRESS`,`SALARY`) VALUES  ('kaushik', '23', 'Kota', '2000.00');

-- SHORT WAY TO INSERT
INSERT INTO `database`.`customer`(`NAME`,`AGE`,`ADDRESS`,`SALARY`) VALUES ('Chaitali','25','Mumbai','6500'),('Hardik','27','Bhopal','8500'),('Komal','22','MP','4500'),('Muffy','24','Indore','10000'),('Rohan','20','Delhi','20000');


/*
	The SQL WHERE Clause
		The WHERE clause is used to filter records.
		It is used to extract only those records that fulfill a specified condition.
	Syntax
		SELECT column1, column2, ...
		FROM table_name
		WHERE condition;
	Note: The WHERE clause is not only used in SELECT statements, it is also used in UPDATE, DELETE, etc.!

	The SQL AND, OR and NOT Operators
		The WHERE clause can be combined with AND, OR, and NOT operators.
		The AND and OR operators are used to filter records based on more than one condition:

	1. The AND operator displays a record if all the conditions separated by AND are TRUE.
	2. The OR operator displays a record if any of the conditions separated by OR is TRUE.
	3. The NOT operator displays a record if the condition(s) is NOT TRUE.
		AND Syntax
			SELECT column1, column2, ...
			FROM table_name
			WHERE condition1 AND condition2 AND condition3 ...;
		OR Syntax
			SELECT column1, column2, ...
			FROM table_name
			WHERE condition1 OR condition2 OR condition3 ...;
		NOT Syntax
			SELECT column1, column2, ...
			FROM table_name
			WHERE NOT condition;
*/

SELECT `ID` ,`NAME`,`SALARY` FROM `DATABASE`.`CUSTOMER`
WHERE `SALARY`>2000 AND `AGE`<25
ORDER BY `ID`;

SELECT `ID`, `NAME`, `SALARY` 
FROM `DATABASE`.`CUSTOMER`
WHERE `SALARY` > 2000 OR `AGE` < 25;

SELECT `NAME`, `AGE` 
FROM `DATABASE`.`CUSTOMER`
WHERE NOT `AGE` = 25;

/*
	The SQL ORDER BY Keyword
		The ORDER BY keyword is used to sort the result-set in ascending or descending order.
		The ORDER BY keyword sorts the records in ascending order by default. To sort the records in descending order, use the DESC keyword.
				Syntax
				SELECT column1, column2, ...
				FROM table_name
				ORDER BY column1, column2, ... ASC|DESC;
*/
SELECT * FROM `database`.`Customer`
ORDER BY `ID` asc, `AGE` desc;

/*
	The SQL GROUP BY Statement:
		The GROUP BY statement groups rows that have the same values into summary rows, like "find the number of customers in each country".
		The GROUP BY statement is often used with aggregate functions (COUNT(), MAX(), MIN(), SUM(), AVG()) to group the result-set by one or more columns.
				GROUP BY Syntax
					SELECT column_name(s)
					FROM table_name
					WHERE condition
					GROUP BY column_name(s)
					ORDER BY column_name(s);
*/
SELECT `NAME` ,SUM(`SALARY`) FROM `DATABASE`.`CUSTOMER`
GROUP BY `NAME`;

/*
	What is a NULL Value?
		A field with a NULL value is a field with no value.
		It is not possible to test for NULL values with comparison operators, such as =, <, or <>.
		We will have to use the IS NULL and IS NOT NULL operators instead.
        
        IS NULL Syntax :
			SELECT column_names
			FROM table_name
			WHERE column_name IS NULL;
            
		IS NOT NULL Syntax :
			SELECT column_names
			FROM table_name
			WHERE column_name IS NOT NULL;
*/
SELECT `NAME`, `AGE` 
FROM `DATABASE`.`CUSTOMER`
WHERE `AGE` IS NULL;

SELECT `NAME`, `AGE` 
FROM `DATABASE`.`CUSTOMER`
WHERE `AGE` IS NOT NULL;

/*
	The SQL UPDATE Statement
		The UPDATE statement is used to modify the existing records in a table.
			UPDATE Syntax
				UPDATE table_name
				SET column1 = value1, column2 = value2, ...
				WHERE condition;
*/
UPDATE `DATABASE`.`CUSTOMER` SET `NAME` = 'RAM' WHERE `ID` = 7 ;

/*
	The SQL DELETE Statement
	The DELETE statement is used to delete existing records in a table.

			DELETE Syntax
				DELETE FROM table_name WHERE condition;
*/
DELETE FROM `DATABASE`.`CUSTOMER` 
WHERE `ID` = 8;

/*
	The SQL HAVING Clause
		The HAVING clause was added to SQL because the WHERE keyword cannot be used with aggregate functions.
        
        HAVING Syntax:
			SELECT column_name(s)
			FROM table_name
			WHERE condition
			GROUP BY column_name(s)
			HAVING condition
			ORDER BY column_name(s);
*/
SELECT `ID`, `NAME`, `AGE`, `ADDRESS`, `SALARY`
FROM `DATABASE`.`CUSTOMER`
GROUP BY `AGE`
HAVING COUNT(`AGE`) >= 2;

/*
	SQL CREATE VIEW Statement
		In SQL, a view is a virtual table based on the result-set of an SQL statement.
		A view contains rows and columns, just like a real table. The fields in a view are fields from one or more real tables in the database.
		You can add SQL statements and functions to a view and present the data as if the data were coming from one single table.

		A view is created with the CREATE VIEW statement. 
			CREATE VIEW Syntax
			CREATE VIEW view_name AS
			SELECT column1, column2, ...
			FROM table_name
			WHERE condition;
*/
UPDATE CUSTOMERS_VIEW SET `AGE` = 35
WHERE `name` = 'Ramesh';

/*
	The SQL EXISTS Operator
		The EXISTS operator is used to test for the existence of any record in a subquery.
		The EXISTS operator returns TRUE if the subquery returns one or more records.

	EXISTS Syntax
		SELECT column_name(s)
		FROM table_name
		WHERE EXISTS
		(SELECT column_name FROM table_name WHERE condition);
*/

/*
	The SQL INSERT INTO SELECT Statement
		The INSERT INTO SELECT statement copies data from one table and inserts it into another table.
		The INSERT INTO SELECT statement requires that the data types in source and target tables matches.
			Note: The existing records in the target table are unaffected.
					INSERT INTO SELECT Syntax
					Copy all columns from one table to another table:

							INSERT INTO table2
							SELECT * FROM table1
							WHERE condition;
                            
					Copy only some columns from one table into another table:

							INSERT INTO table2 (column1, column2, column3, ...)
							SELECT column1, column2, column3, ...
							FROM table1
							WHERE condition;
*/
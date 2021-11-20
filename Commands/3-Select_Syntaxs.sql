-- SQL - Select Syntax

/*
	The SQL SELECT Statement
		The SELECT statement is used to select data from a database.
		The data returned is stored in a result table, called the result-set.
	SELECT Syntax
		SELECT column1, column2, ...
		FROM table_name;
			OR
		SELECT * FROM TABLE_NAME;     (* IS USED TO SELECT ALL COLUMNS IN THE TABLE)
*/
SELECT * FROM `DATABASE`.`CUSTOMER`; -- This the way to write in the mysql workbench

/*
	The SQL SELECT DISTINCT Statement
		The SELECT DISTINCT statement is used to return only distinct (different) values.
		Inside a table, a column often contains many duplicate values; and sometimes you only want to list the different (distinct) values.
	Syntax
		SELECT DISTINCT column1, column2, ...
		FROM table_name;
*/
SELECT DISTINCT(`ID`),`NAME` FROM `Customers`;

/*
	The SQL SELECT TOP Clause
		The SELECT TOP clause is used to specify the number of records to return.

		The SELECT TOP clause is useful on large tables with thousands of records. Returning a large number of records can impact performance.

		Note: Not all database systems support the SELECT TOP clause. MySQL supports the LIMIT clause to select a limited number of records, while Oracle uses FETCH FIRST n ROWS ONLY and ROWNUM.
				Syntax:
				SELECT TOP number|percent column_name(s)
				FROM table_name
				WHERE condition;
*/
SELECT * FROM `DATABASE1`.`CUSTOMERS` 
order by `ID`
Limit 3;

/*
	The SQL SELECT INTO Statement
		The SELECT INTO statement copies data from one table into a new table.

		SELECT INTO Syntax
		Copy all columns into a new table:

				SELECT *
				INTO newtable [IN externaldb]
				FROM oldtable
				WHERE condition;
*/
SELECT * INTO `CustomersBackup2017`
FROM `DATABASE`.`Customer`;

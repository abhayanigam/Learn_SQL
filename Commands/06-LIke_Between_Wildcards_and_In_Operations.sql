-- SQL LIke , Between ,Wildcards And in operations

/*
	The following operators can be used in the WHERE clause:
		Operator	Description	Example
		=	- Equal	
		>	- Greater than	
		<	- Less than	
		>=	- Greater than or equal	
		<=	- Less than or equal	
		<>	- Not equal. Note: In some versions of SQL this operator may be written as !=	
		BETWEEN	- Between a certain range	
		LIKE	- Search for a pattern	
		IN	- To specify multiple possible values for a column
*/
/*
	1. The SQL LIKE Operator
		The LIKE operator is used in a WHERE clause to search for a specified pattern in a column.
		There are two wildcards often used in conjunction with the LIKE operator:
			 1. The percent sign (%) represents zero, one, or multiple characters
			 2. The underscore sign (_) represents one, single character

		For operation vist - https://www.w3schools.com/sql/sql_like.asp
							https://www.tutorialspoint.com/sql/sql-like-clause.htm
    
    2. SQL Wildcard Characters
		A wildcard character is used to substitute one or more characters in a string.
		Wildcard characters are used with the LIKE operator. The LIKE operator is used in a WHERE clause to search for a specified pattern in a column.
		
        For operation vist - https://www.w3schools.com/sql/sql_wildcards.asp
	
    3. The SQL IN Operator
		The IN operator allows you to specify multiple values in a WHERE clause.
		The IN operator is a shorthand for multiple OR conditions.

		IN Syntax:
			SELECT column_name(s)
			FROM table_name
			WHERE column_name IN (value1, value2, ...);
		or:
			SELECT column_name(s)
			FROM table_name
			WHERE column_name IN (SELECT STATEMENT);
            
	4. The SQL BETWEEN Operator
		The BETWEEN operator selects values within a given range. The values can be numbers, text, or dates.
		The BETWEEN operator is inclusive: begin and end values are included. 

		BETWEEN Syntax:
			SELECT column_name(s)
			FROM table_name
			WHERE column_name BETWEEN value1 AND value2;
*/

SELECT * FROM `DATABASE`.`CUSTOMER`
WHERE `NAME` IN ('Ram', 'Rohan');

SELECT * FROM `DATABASE`.`CUSTOMER`
WHERE `NAME` NOT IN ('Ram', 'Rohan');

SELECT * FROM `DATABASE`.`CUSTOMER`
WHERE `AGE` BETWEEN 20 AND 40;
    
             

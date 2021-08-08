-- SQL Maths (Operation Functions)

/*
	1. The SQL MIN() and MAX() Functions
		1. The MIN() function returns the smallest value of the selected column.
		2. The MAX() function returns the largest value of the selected column.

		MIN() Syntax:
			SELECT MIN(column_name)
			FROM table_name
			WHERE condition;
		MAX() Syntax:
			SELECT MAX(column_name)
			FROM table_name
			WHERE condition;
            
	2. The SQL COUNT(), AVG() and SUM() Functions
		2.i. The COUNT() function returns the number of rows that matches a specified criterion.

			COUNT() Syntax:
				SELECT COUNT(column_name)
				FROM table_name
				WHERE condition;
				
		2.ii. The AVG() function returns the average value of a numeric column. 

			AVG() Syntax:
				SELECT AVG(column_name)
				FROM table_name
				WHERE condition;
				
		2.iii. The SUM() function returns the total sum of a numeric column. 

			SUM() Syntax:
				SELECT SUM(column_name)
				FROM table_name
				WHERE condition;
*/

SELECT MAX(`SALARY`),MIN(`SALARY`)
FROM `DATABASE`.`CUSTOMER`;

SELECT COUNT(`SALARY`),AVG(`SALARY`),SUM(`SALARY`)
FROM `DATABASE`.`CUSTOMER`;


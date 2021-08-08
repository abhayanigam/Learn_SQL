-- SQL Aliases
USE `DATABASE`;
/*
	SQL aliases are used to give a table, or a column in a table, a temporary name.
	Aliases are often used to make column names more readable.
	An alias only exists for the duration of that query.

	NOTE :
		An alias is created with the AS keyword.

	Alias Column Syntax
		SELECT column_name AS alias_name
		FROM table_name;
		Alias Table Syntax
		SELECT column_name(s)
*/

SELECT *
   FROM `CUSTOMER` AS `C`, `ORDERS` AS `O`
   WHERE  `C`.`ID` = `O`.`CUSTOMER_ID`;
   
-- 			OR

SELECT C.ID, C.NAME, C.AGE, O.AMOUNT 
   FROM CUSTOMER AS C, ORDERS AS O
   WHERE  C.ID = O.CUSTOMER_ID;
   
SELECT `ID` AS `CUSTOMER_ID`, `NAME` AS `CUSTOMER_NAME`
   FROM `CUSTOMER`
   WHERE `SALARY` IS NOT NULL
   ORDER BY `CUSTOMER_ID`; 
   
SELECT Name, CONCAT(ID,', ',AGE,', ',ADDRESS,', ',SALARY) AS Address
FROM Customer;

-- The CustomerName column and one for the ContactName column. 
-- Note: It requires double quotation marks or square brackets if the alias name contains spaces:

SELECT Name AS Customer, SALARY AS [Person SALARY]
FROM Customer;
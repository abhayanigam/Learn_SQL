-- SQL CASE OPERATIONS

/*
	The SQL CASE Statement
		The CASE statement goes through conditions and returns a value when the first condition is met (like an if-then-else statement). 
		So, once a condition is true, it will stop reading and return the result. If no conditions are true, it returns the value in the ELSE clause.

		If there is no ELSE part and no conditions are true, it returns NULL.

		CASE Syntax:
				CASE
					WHEN condition1 THEN result1
					WHEN condition2 THEN result2
					WHEN conditionN THEN resultN
					ELSE result
				END;
*/
SELECT `ID`, `SALARY`,
CASE
    WHEN `SALARY` > 30 THEN 'The SALARY is greater than 30'
    WHEN `SALARY` = 2000 THEN 'The SALARY is 2000'
    ELSE 'The SALARY is under 30'
END AS `QuantityText`
FROM `DATABASE`.`CUSTOMER`;

/*
	The SQL ANY and ALL Operators
		The ANY and ALL operators allow you to perform a comparison between a single column value and a range of other values.
        
	The SQL ANY Operator
		The ANY operator:
			1. returns a boolean value as a result
			2. returns TRUE if ANY of the subquery values meet the condition
			3. ANY means that the condition will be true if the operation is true for any of the values in the range.

		ANY Syntax:
			SELECT column_name(s)
			FROM table_name
			WHERE column_name operator ANY
			  (SELECT column_name
			  FROM table_name
			  WHERE condition);
              
	The SQL ALL Operator
		The ALL operator:
			1. returns a boolean value as a result
			2. returns TRUE if ALL of the subquery values meet the condition
			3. is used with SELECT, WHERE and HAVING statements
			4. ALL means that the condition will be true only if the operation is true for all values in the range. 

		ALL Syntax With SELECT:
			SELECT ALL column_name(s)
			FROM table_name
			WHERE condition;
            
		ALL Syntax With WHERE or HAVING:
				SELECT column_name(s)
				FROM table_name
				WHERE column_name operator ALL
				  (SELECT column_name
				  FROM table_name
				  WHERE condition);
                  
Note: The operator must be a standard comparison operator (=, <>, !=, >, >=, <, or <=).
*/
SELECT ALL `AGE`
FROM `database`.`CUSTOMER`
WHERE TRUE;


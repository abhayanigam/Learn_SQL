-- SQL CREATE,Drop TABLE And Constraints
/*
	Syntax
		CREATE TABLE table_name (
			column1 datatype constraint,
			column2 datatype constraint,
			column3 datatype constraint,
			....
		);
	DataType :
		VARCHAR(size):-
			A VARIABLE length string (can contain letters, numbers, and special characters).
			The size parameter specifies the maximum column length in characters - can be from 0 to 65535
*/

-- First Create The DataBase just in case if not created
-- Create database database_name;
Create schema `database`;  -- My SQL Syntax

-- Creating table :
Create table `database`.`customer`(
	`ID` INT NOT NULL auto_increment,
    `NAME` varchar(45) NOT NULL,
    `AGE` INT NOT NULL,
    `ADDRESS` varchar(45) NOT NULL,
    `SALARY` float NOT NULL,
    UNIQUE INDEX `NAME_UNIQUE` (`NAME` ASC) VISIBLE,
    UNIQUE INDEX `ID_UNIQUE` (`ID` ASC)VISIBLE
);

-- Droping Table (Means Deleting the table)
-- The DROP TABLE statement is used to drop an existing table in a database.
-- 			Syntax
-- 				DROP TABLE table_name;
Drop schema `Customer`;

-- SQL TRUNCATE TABLE
-- The TRUNCATE TABLE statement is used to delete the data inside a table, but not the table itself.
-- 			Syntax
-- 			TRUNCATE TABLE table_name;
truncate table `Customer`;

/*
	SQL Create Constraints :
		Constraints can be specified when the table is created with the CREATE TABLE statement, 
        or after the table is created with the ALTER TABLE statement.
        SQL constraints are used to specify rules for the data in a table.

		Constraints are used to limit the type of data that can go into a table. 
        This ensures the accuracy and reliability of the data in the table. 
		If there is any violation between the constraint and the data action, the action is aborted.
	
	
	The following constraints are commonly used in SQL:

		NOT NULL 		- Ensures that a column cannot have a NULL value
		UNIQUE 			- Ensures that all values in a column are different
		PRIMARY KEY 	- A combination of a NOT NULL and UNIQUE. Uniquely identifies each row in a table
		FOREIGN KEY	 	- A foreign key is a key used to link two tables together.
						  This is sometimes also called as a referencing key.
		CHECK 			- Ensures that the values in a column satisfies a specific condition
		DEFAULT 		- Sets a default value for a column if no value is specified
		CREATE INDEX 	- Used to create and retrieve data from the database very quickly
        AUTO INCREMENT	- Auto-increment allows a unique number to be generated automatically when a new record is inserted into a table.
							Note :- The MS SQL Server uses the IDENTITY keyword to perform an auto-increment feature.
									In the example above, the starting value for IDENTITY is 1, and it will increment by 1 for each new record.
									Tip: To specify that the "Personid" column should start at value 10 and increment by 5, change it to IDENTITY(10,5).
*/
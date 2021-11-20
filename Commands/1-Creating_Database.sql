-- SQL Syntax
/*
All the SQL statements start with any of the keywords like
SELECT, INSERT, UPDATE, DELETE, ALTER, DROP, CREATE, USE, SHOW and all the statements end with a semicolon (;).

Keep in Mind That...
	SQL keywords are NOT case sensitive: select is the same as SELECT
	In this tutorial we will write all SQL keywords in upper-case.
    
    Semicolon after SQL Statements?
		database systems require a semicolon at the end of each SQL statement.
        
SQL Comments :
	Single line Comments
		Single line comments start with --.
	Multi-line Comments
		Multi-line comments start with /* and end with OPPOSITE sign like what we done in c,c++ and Java.

Various Syntax in SQL :-
	Some of The Most Important SQL Commands
		SELECT 			- extracts data from a database
		UPDATE 			- updates data in a database
		DELETE 			- deletes data from a database
		INSERT INTO 	- inserts new data into a database
		CREATE DATABASE - creates a new database
		ALTER DATABASE 	- modifies a database
		CREATE TABLE 	- creates a new table
		ALTER TABLE 	- modifies a table
		DROP TABLE 		- deletes a table
		CREATE INDEX 	- creates an index (search key)
		DROP INDEX 		- deletes an index
*/

-- The CREATE DATABASE statement is used to create a new SQL database.
-- Create database database_name;
Create schema `database`;  -- My SQL Syntax

-- The DROP DATABASE statement is used to drop an existing SQL database.
DROP DATABASE `database`;

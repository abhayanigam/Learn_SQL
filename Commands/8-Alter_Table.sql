-- SQL ALTER TABLE Command

/*
	SQL ALTER TABLE Statement
		The ALTER TABLE statement is used to add, delete, or modify columns in an existing table.
		The ALTER TABLE statement is also used to add and drop various constraints on an existing table.

		ALTER TABLE - ADD Column
		To add a column in a table, use the following syntax:

				ALTER TABLE table_name
				ADD column_name datatype;
                
	ALTER TABLE - DROP COLUMN
		To delete a column in a table, use the following syntax (notice that some database systems don't allow deleting a column):

			ALTER TABLE table_name
			DROP COLUMN column_name;
*/

SELECT * FROM `DATABASE`.`CUSTOMER`;

ALTER TABLE `DATABASE`.`CUSTOMER`
ADD `DEPARTMENT NAME` VARCHAR(45) NULL AFTER `AGE`;

ALTER TABLE `DATABASE`.`CUSTOMER`
DROP `DEPARTMENT NAME`;

/*
	ALTER TABLE - ALTER/MODIFY COLUMN:
		To change the data type of a column in a table, use the following syntax:

		SYNTAX:
			ALTER TABLE table_name
			ALTER COLUMN column_name datatype;
		
        SYNTAX
			ALTER TABLE table_name
			MODIFY COLUMN column_name datatype;
*/

CREATE TABLE `DATABASE`.`ORDERS`(
	`OID` INT NOT NULL AUTO_INCREMENT,
    `DATE` DATETIME NULL,
    `CUSTOMER_ID` INT NOT NULL,
    `AMOUNT` INT NOT NULL,
    UNIQUE INDEX `ID_UNIQUE` (`OID` ASC)VISIBLE
);

-- Set the start number for auto increment :
ALTER TABLE `DATABASE`.`ORDERS` AUTO_INCREMENT=100;

INSERT INTO `DATABASE`.`ORDERS` (`DATE`, `CUSTOMER_ID`, `AMOUNT`) VALUES ('2009-10-08 00:00:00', '3', '3000')
,('2009-10-08 00:00:00 ','3','1500'),('2009-11-20 00:00:00 ','2','1560'),('2008-05-20 00:00:00','4','2060');

SELECT * FROM `DATABASE`.`ORDERS`
ORDER BY `OID`;

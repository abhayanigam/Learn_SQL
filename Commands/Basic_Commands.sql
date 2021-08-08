USE `database1`;	-- This is used to select the database for work

-- Creating table 1

SELECT * FROM `database1`.`customers`
order by `ID`;

CREATE TABLE `database1`.`CUSTOMERS`(
	`ID` INT NOT NULL AUTO_INCREMENT,
    `NAME` VARCHAR(45) NOT NULL,
    `AGE` INT NOT NULL,
    `ADDRESS` VARCHAR(45) NOT NULL,
    `SALARY` INT NOT NULL,
    UNIQUE INDEX `NAME_UNIQUE` (`NAME` ASC) VISIBLE,
    UNIQUE INDEX `ID_UNIQUE` (`ID` ASC)VISIBLE);

INSERT INTO `database1`.`customers`(`NAME`,`AGE`,`ADDRESS`,`SALARY`) VALUES ('Ramesh','32','Ahmedabad','2000'),('khilan','25','Delhi','1500'),('Kaushik','23','Kota','2000'), 
('Chaitali','25','Mumbai','6500'),('Hardik','27','Bhopal','8500'),('Komal','22','MP','4500'),('Muffy','24','Indore','10000'),('Rohan','20','Delhi','20000');

DELETE FROM `database1`.`customers` WHERE `ID` = 6;

UPDATE `DATABASE1`.`CUSTOMERS` SET `ID` = 6 WHERE `NAME` = 'MUFFY';
UPDATE `DATABASE1`.`CUSTOMERS` SET `ID` = 7 WHERE `NAME` = 'Rohan';

SELECT * FROM `DATABASE1`.`CUSTOMERS` 
order by `ID`
Limit 3;

SELECT `ID` ,`NAME`,`SALARY` FROM `DATABASE1`.`CUSTOMERS`
WHERE `SALARY`>2000 AND `AGE`<25
ORDER BY `ID`;

SELECT distinct`ID` ,`NAME`,`SALARY` FROM `DATABASE1`.`CUSTOMERS`
WHERE `SALARY`>2000 OR `AGE`<25
ORDER BY `ID`;

SELECT `NAME` ,SUM(`SALARY`) FROM `DATABASE1`.`CUSTOMERS`
GROUP BY `NAME`;

SELECT distinct(`SALARY`),`NAME` FROM `CUSTOMERS`
ORDER BY `SALARY`;

-- --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- 
-- Creating new table 2

SELECT * FROM `DATABASE1`.`ORDERS`
ORDER BY `OID`;

CREATE TABLE `DATABASE1`.`ORDERS`(
	`OID` INT NOT NULL AUTO_INCREMENT,
    `DATE` DATE NULL,
    `CUSTOMER_ID` INT NOT NULL,
    `AMOUNT` INT NOT NULL,
    UNIQUE INDEX `ID_UNIQUE` (`OID` ASC)VISIBLE
);

-- Set the start number for auto increment :
ALTER TABLE `ORDERS` AUTO_INCREMENT=100;

INSERT INTO `DATABASE1`.`ORDERS` (`DATE`, `CUSTOMER_ID`, `AMOUNT`) VALUES ('2009-10-08 ', '3', '3000'),('2009-10-08','3','1500'),('2009-11-20','2','1560'),('2008-05-20','4','2060');
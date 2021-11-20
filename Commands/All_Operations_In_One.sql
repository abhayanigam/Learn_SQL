-- Creating Database
Create schema `Test_Database`;

-- Creating Table1
Create table `test_database`.`customers`(
	`ID` INT NOT NULL auto_increment,
    `NAME` varchar(45) NOT NULL,
    `AGE` INT NOT null ,
    `ADDRESS` varchar(45) NOT NULL,
    `SALARY` float not null,
    unique 	index `Name_Unique`(`Name` Asc) visible,
    unique index `ID_Unique` (`ID` Asc) visible
);

-- if your table has been created successfully by looking at the message displayed by the SQL server, otherwise you can use the DESC command
desc `test_database`.`customers`;

-- Inseerting Value in the table 
Insert Into `test_database`.`customers`(`ID`,`NAME`,`AGE`,`ADDRESS`,`SALARY`)
values (1, 'Ramesh', 32, 'Ahmedabad', 2000.00 ),(2, 'Khilan', 25, 'Delhi', 1500.00 ),
(3, 'kaushik', 23, 'Kota', 2000.00 ),(4, 'Chaitali', 25, 'Mumbai', 6500.00 ),
(5, 'Hardik', 27, 'Bhopal', 8500.00 ),(6, 'Komal', 22, 'MP', 4500.00 ),(7,'Muffy', 24, 'Indore', 10000.00 );

-- Also write like this
Insert into `test_database`.`customers` (`ID`,`NAME`,`AGE`,`ADDRESS`,`SALARY`) values(6, 'Komal', 22, 'MP', 4500.00 );
-- Showing the table
Select * from `test_database`.`customers`;

-- Order By 
Select * from `test_database`.`customers` 
order by `id` Limit 3;
-- order by `id` asc;
-- ORDER BY `ID` asc, `AGE` desc;

-- Where Condition
Select * from `test_database`.`customers`
where `salary`>2000;

-- updating the values
update `test_database`.`customers` set `Address` = 'Pune'
where Id = 6;

-- This will change all the value in the table.
-- update `test_database`.`customers` set `Address` = 'Pune', `salary` = 1000.0;

-- Delete the value
Delete from `test_database`.`customers`
where `id` = 6;

-- To Delete All Records from the table
truncate table `test_database`.`customers`;

-- Like Clause
SELECT * FROM `test_database`.`customers`
WHERE SALARY LIKE '200%';

-- Group By
Select `Name`,Sum(`Salary`) from `test_database`.`customers`
Group by `name`;

-- Distinct Keyword (Used to print non repeated values)
Select distinct(`Salary`) from `test_database`.`customers`
order by `salary`;

-- To fetch the rows with their own preferred order, the SELECT query
Select * from `test_database`.`customers`
order by (case `ADDRESS`
   WHEN 'DELHI'	 THEN 1
   WHEN 'BHOPAL' THEN 2
   WHEN 'KOTA' 	 THEN 3
   WHEN 'AHMEDABAD' THEN 4
   WHEN 'MP' 	THEN 5
   ELSE 20 END) ASC, `ADDRESS` DESC;

-- IN Operator
Select * from `test_database`.`customers`
where `Address` In ('Mumbai','Bhopal');

Select * from `test_database`.`customers`
where `Address` not In ('Mumbai','Bhopal');

-- statement selects all customers that are from the same countries as the suppliers
-- SELECT * FROM Customers WHERE Country IN (SELECT Country FROM Suppliers);

-- Between Operator
Select * from `test_database`.`customers`
where `salary` between 1000 And 2000;

Select * from `test_database`.`customers`
where `salary` Not between 1000 And 2000;

-- Creating new orders table
create table `test_database`.`orders`(
	`OID` int not null auto_increment,
    `DATE` date null,
    `CUSTOMER_ID` int not null,
    `AMOUNT` int not null,
    unique index `id_unique` (`OID` Asc) visible
);

-- Inserting values in the orders table 
INSERT INTO `test_database`.`ORDERS` (`DATE`, `CUSTOMER_ID`, `AMOUNT`) VALUES ('2009-10-08 ', '3', '3000'),('2009-10-08','3','1500'),('2009-11-20','2','1560'),('2008-05-20','4','2060');

-- Set the start number for auto increment :
ALTER TABLE `test_database`.`ORDERS` AUTO_INCREMENT=100;

-- Showing Order table
Select * from `test_database`.`orders`;

-- Join Operations
-- 1 : Inner Join 
Select `ID`,`Name`,`Amount`,`Date` from `test_database`.`Customers`
inner join `test_database`.`Orders` on `customers.ID` = `Orders.Customer_ID`;

-- 2 : LEFT JOIN
SELECT `ID` ,`NAME` ,`AMOUNT`, `DATE`
FROM `test_database`.`CUSTOMERS`
LEFT JOIN `test_database`.`ORDERS` ON `CUSTOMERS.ID` = `ORDERS.CUSTOMER_ID`;

-- 3 : RIGHT JOIN
SELECT `ID` ,`NAME` ,`AMOUNT`, `DATE`
FROM `test_database`.`CUSTOMER`
RIGHT JOIN `test_database`.`ORDERS` ON `CUSTOMER.ID` = `ORDERS.CUSTOMER_ID`;

-- 4 : FULL JOIN
SELECT `ID` ,`NAME` ,`AMOUNT`, `DATE`
FROM `test_database`.`CUSTOMERS`
FULL JOIN `test_database`.`ORDERS` ON `CUSTOMER.ID` = `ORDERS.CUSTOMER_ID`;

-- 5 : SELF JOIN as follows −

SELECT  `a.ID`, `b.NAME`, `a.SALARY`
   FROM `CUSTOMERS` a, `CUSTOMERS` b
   WHERE `a.SALARY` < `b.SALARY`;

-- UNION CLAUSE
SELECT  ID, NAME, AMOUNT, DATE
   FROM CUSTOMER
   LEFT JOIN ORDERS
   ON CUSTOMER.ID = ORDERS.CUSTOMER_ID
UNION
   SELECT  ID, NAME, AMOUNT, DATE
   FROM CUSTOMER
   RIGHT JOIN ORDERS
   ON CUSTOMER.ID = ORDERS.CUSTOMER_ID;
   
-- UNION ALL
SELECT  ID, NAME, AMOUNT, DATE
   FROM CUSTOMER
   LEFT JOIN ORDERS
   ON CUSTOMER.ID = ORDERS.CUSTOMER_ID
UNION ALL
   SELECT  ID, NAME, AMOUNT, DATE
   FROM CUSTOMER
   RIGHT JOIN ORDERS
   ON CUSTOMER.ID = ORDERS.CUSTOMER_ID;
   
-- The COMMIT command is the transactional command used to save changes invoked by a
-- transaction to the database. The COMMIT command saves all the transactions to the 
-- database since the last COMMIT or ROLLBACK command.

-- example which would delete those records from the table which have age = 25 and 
-- then COMMIT the changes in the database.
DELETE FROM `test_database`.`customers` WHERE `AGE` = 25;
COMMIT;

-- The ROLLBACK command is the transactional command used to undo transactions that 
-- have not already been saved to the database. This command can only be used to undo 
-- transactions since the last COMMIT or ROLLBACK command was issued.

ROLLBACK;

-- To Select the current DataBase 
Use `test_database`;

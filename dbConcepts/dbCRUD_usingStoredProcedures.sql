show databases;

create database sqlDemo;

use sqlDemo;
show tables;

create table Employee2(
empId int PRIMARY KEY,
empName varchar(20),
email varchar(20),
isFullTime boolean,
dob date,
city varchar(20),
phoneNumber numeric
); 

-- ------------------------create procedure to insert employee table ---------------------------  
DELIMITER //

CREATE PROCEDURE addEmployee(
    IN eid INT,
    IN ename VARCHAR(20),
    IN email VARCHAR(20),
    IN isFullTime BOOLEAN,
    IN dob DATE,
    IN city VARCHAR(20),
    IN phoneNumber NUMERIC
)
BEGIN 
    INSERT INTO employee2(empId, empName, email, isFullTime, dob, city, phoneNumber) 
    VALUES (eid, ename, email, isFullTime, dob, city, phoneNumber);
END //

DELIMITER ;


-- ---------------add data by calling procedure------------------------ 
CALL addEmployee(1, 'Vishal', 'vishal@gmail.com', TRUE, '2001-02-15', 'Mumbai', 1234567891);
CALL addEmployee(2, 'Kunal', 'kunal@gmail.com', FALSE, '2002-03-20', 'Delhi', 9876543211);
CALL addEmployee(3, 'Kushal', 'kushal@gmail.com', TRUE, '2003-04-25', 'Bangalore', 1122334456);
CALL addEmployee(4, 'Swaraj', 'swaraj@gmail.com', FALSE, '2004-05-30', 'Pune', 2233445566);


-- ------------------------create procedure to show employee table --------------------------- 
DELIMITER //

CREATE PROCEDURE showAllEmployees()
BEGIN
    SELECT * FROM employee2;
END //

DELIMITER ;

CALL showAllEmployees();

-- ------------------------create procedure to update employee name --------------------------- 
DROP PROCEDURE IF EXISTS updateNameOfEmployee;
DELIMITER //

CREATE PROCEDURE updateNameOfEmployee(IN eid int, IN empname varchar(20))
BEGIN
    update employee2 set employee2.empName = empname where employee2.empId = eid;
END //

DELIMITER ;

CALL updateNameOfEmployee(1,'Natsu');

-- ------------------------create procedure to delete employee based on id from table --------------------------- 
CALL addEmployee(5, 'Ram', 'ram@gmail.com', FALSE, '2004-05-20', 'Pune', 2345233446);

DELIMITER //

CREATE PROCEDURE deleteEmployee(IN eid int)
BEGIN
    delete from employee2 where employee2.empId = eid;
END //

DELIMITER ;

call deleteEmployee(5);

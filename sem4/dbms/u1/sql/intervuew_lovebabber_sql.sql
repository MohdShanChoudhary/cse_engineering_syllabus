CREATE DATABASE ORG;
SHOW DATABASES;
USE ORG;

CREATE TABLE Worker (
	WORKER_ID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	FIRST_NAME CHAR(25),
	LAST_NAME CHAR(25),
	SALARY INT(15),
	JOINING_DATE DATETIME,
	DEPARTMENT CHAR(25)
);

INSERT INTO Worker 
	(WORKER_ID, FIRST_NAME, LAST_NAME, SALARY, JOINING_DATE, DEPARTMENT) VALUES
		(001, 'Monika', 'Arora', 100000, '14-02-20 09.00.00', 'HR'),
		(002, 'Niharika', 'Verma', 80000, '14-06-11 09.00.00', 'Admin'),
		(003, 'Vishal', 'Singhal', 300000, '14-02-20 09.00.00', 'HR'),
		(004, 'Amitabh', 'Singh', 500000, '14-02-20 09.00.00', 'Admin'),
		(005, 'Vivek', 'Bhati', 500000, '14-06-11 09.00.00', 'Admin'),
		(006, 'Vipul', 'Diwan', 200000, '14-06-11 09.00.00', 'Account'),
		(007, 'Satish', 'Kumar', 75000, '14-01-20 09.00.00', 'Account'),
		(008, 'Geetika', 'Chauhan', 90000, '14-04-11 09.00.00', 'Admin');
        
SELECT * FROM Title;

CREATE TABLE Bonus (
	WORKER_REF_ID INT,
	BONUS_AMOUNT INT(10),
	BONUS_DATE DATETIME,
	FOREIGN KEY (WORKER_REF_ID)
		REFERENCES Worker(WORKER_ID)
        ON DELETE CASCADE
);

INSERT INTO Bonus 
	(WORKER_REF_ID, BONUS_AMOUNT, BONUS_DATE) VALUES
		(001, 5000, '16-02-20'),
		(002, 3000, '16-06-11'),
		(003, 4000, '16-02-20'),
		(001, 4500, '16-02-20'),
		(002, 3500, '16-06-11');
        
CREATE TABLE Title (
	WORKER_REF_ID INT,
	WORKER_TITLE CHAR(25),
	AFFECTED_FROM DATETIME,
	FOREIGN KEY (WORKER_REF_ID)
		REFERENCES Worker(WORKER_ID)
        ON DELETE CASCADE
);

INSERT INTO Title 
	(WORKER_REF_ID, WORKER_TITLE, AFFECTED_FROM) VALUES
 (001, 'Manager', '2016-02-20 00:00:00'),
 (002, 'Executive', '2016-06-11 00:00:00'),
 (008, 'Executive', '2016-06-11 00:00:00'),
 (005, 'Manager', '2016-06-11 00:00:00'),
 (004, 'Asst. Manager', '2016-06-11 00:00:00'),
 (007, 'Executive', '2016-06-11 00:00:00'),
 (006, 'Lead', '2016-06-11 00:00:00'),
 (003, 'Lead', '2016-06-11 00:00:00');
 
 select * from Worker ;
-- 1  write a sql quire to feach first name from worker table using aslie name as worker name 
select FIRST_NAME FROM WORKER AS WORKER_NAME;
-- 2write a quirey  to feach firstname from worker table in upper case 
SELECT upper(FIRST_NAME) FROM Worker;
-- 3to feach first value of department from worker table 
select distinct  DEPARTMENT from Worker;
SELECT DEPARTMENT FROM WORKER  GROUP BY DEPARTMENT ;
-- 4to print first 3 character of firstname of worker table   (USE SUBSTRING )
SELECT SUBSTRING(FIRST_NAME,1,3) FROM WORKER ;
-- 5to find the position of alphabed b in the first name column amitab from the worker table 
SELECT instr(FIRST_NAME,"b") FROM Worker WHERE FIRST_NAME="Amitabh";            -- this is important 
-- 6 to print first name form work table after removing while space from the right side 
select RTRIM(first_name) from worker ;
select FIRST_NAME from Worker ;
-- 7 to print the work dipartment from work table after removing while space from the left side 

-- 8 TO FEACH TO UNIQUE VALUE FROM DEPARTMENT FROM WORKER TABLE AND PRINT ITS  LENGTH 
SELECT DISTINCT Department, LENGTH(Department) 
FROM worker;

-- 9 TO PRINT FIRST  NAME FROM WORKER TABLE AFTER REPLACE WORKER TABLE "a" TO A 
select replace(first_name ,"a","A") from worker ;

-- 10 to print firstname and last name from worker table into a single column compleat name a space char should saprate them 
select concat(first_name," ",last_name) as Full_name from worker  ;

-- 11 to print all worker  deltails from worker table order by firstname assanding order 
select * from worker  order by first_name asc;
-- 12 to print all eorker details from the worker table order by first_name assanding and departmen desanding 
select * from worker order by first_name asc,department desc;
-- 13 to print detais of worker with the firstname as vipul and shatish from worker table .
select * from worker where first_name in ("Satish","Vipul");
select * from worker where first_name = "Satish" and "Vipul";  -- this is not working 
SELECT * FROM worker WHERE first_name = "Satish" OR first_name = "Vipul";
-- 14 except satish and  vipul 
select * from worker where first_name not in ("Satish","Vipul");
-- 15 to print details of worker and department name as admin 
select * from worker where department  like "Admin%";  -- admin like            -- Admin% sirt starting ma ho 
-- 16  to print details of worker whose firstname have a 
SELECT * FROM worker WHERE first_name LIKE "%a%";                              -- "%a%" text ma kahi bhi a ho 
-- 17 first name end with a 
select *from worker where first_name like "%a";                                  -- "%a"
-- 20 worker whose firstname end with h and have 6 alphabed bifor 
select * from worker where first_name like "_____h" ;
-- 19 detaiils of worker whose salary lies bitween 100000 and 500000
 select * from worker where salary between 100000 and 500000;
 -- 20 worker who have join in feb 2014
SELECT * FROM worker 
WHERE YEAR(joining_date) = 2024 AND MONTH(joining_date) = 2;
-- 21 to feach the count of employ working in the department  admin 
select  department ,count(*) from worker where  department = "Admin";
-- 22 to feach worker full name 





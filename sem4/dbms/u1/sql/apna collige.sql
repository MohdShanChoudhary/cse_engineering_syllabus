

-- Validation Rules:

-- Databases can enforce validation rules to ensure that only accurate and valid data is entered.

-- Transactions:

-- Databases support transactions, ensuring that multiple operations are completed successfully as a single unit of work. If any part of the transaction fails, the entire operation can be rolled back, maintaining data integrity.

-- Summary
-- A database is a structured collection of data stored electronically, managed by a DBMS.
-- Databases offer efficient data management, accessibility, security, and scalability.
-- They are essential for maintaining data integrity, supporting data relationships, and facilitating data analysis and reporting.
-- Databases are fundamental to many applications, from small-scale business operations to large enterprise systems, enabling efficient data storage, retrieval, and analysis.4o
show databases;
show tables;
create database if not exists dogstore;
select database();                         -- dhakna ka lia konsa data base use hora hai 
use  dogstore;                             -- to use database 
drop database dogstore;
-- --------------------------------------------------------------------------------------------------------------------------------------------------------------------

create database student2;
use student2;
create table studentinformation(name varchar(100),id int not null  );
show tables ;
show columns from studentinformation;                          -- to show column                important
desc studentinformation    ;                                   -- also use to show column       important 


insert into studentinformation ( name , id ) values ("mohammad shan " , 787),("mohammad rihan ",788);
select * from studentinformation;
show columns from  studentinformation;
-- ----------------------------------------------------------------------------------------------------------------------------------------

CREATE TABLE fordefault (
    age VARCHAR(50) DEFAULT 'isma value nahi hai'
);
INSERT INTO fordefault (age) VALUES (23),(32),(32),(54);
show columns FROM fordefault;
select * from fordefault;
-- distince 
select distinct age from fordefault;    -- to print different values in
select count(age) from fordefault; 
select count(distinct age) from fordefault;     -- to count the occrence 



-- where 
select * from fordefault where age > 40;

-- order by 
select * from fordefault order by age ;     


-- and operator             -- jaha sa m sa start hora ho vo deha ya ->  like  "M%";            (hum isko and  or  ka sath use kr sakta hai )
-- or operator 
 -- not operator       -- not  name = " shan " 
 
-- update  table 
SET SQL_SAFE_UPDATES = 0;
update fordefault 
set age=1000 
where age = 54;
select * from fordefault ;
-- REMOVE 
delete from fordefault where age =23;
select * from fordefault ;
-- limit 
select * from fordefault limit 2 offset 1;
select * from fordefault limit 3 ;
select * from fordefault ;

-- MIN  AND MAX 
SELECT MAX(age) FROM fordefault;

-- min and max 
-- average 
-- sum 



-- important like operator in sql 
SELECT * FROM Customers
WHERE CustomerName LIKE 'a%';        -- "_a" where a is in second no .    



-- in 
select * from fordefault;
select * from fordefault where age in (32,1000)  ;


-- bitween 
 select * from fordefault where age between 1 and 10001;
 
--  primary key -- 
create table employ (name varchar(225) default "user id 001",   id  int not null  primary key );   -- auto increment 
desc  employ;
ALTER TABLE employ 
MODIFY id INT NOT NULL AUTO_INCREMENT PRIMARY KEY;


-- concat 
ALTER TABLE employ 
ADD fname VARCHAR(225), 
ADD lname VARCHAR(225);
ALTER TABLE employ  DROP COLUMN name;


INSERT INTO employ (id ,fname, lname) 
VALUES ("12",'mohammad', 'shan'), 
       ("13",'mohammad', 'rihan');
desc  employ;
select  * from employ ;
select concat(fname," ",lname) as fullname  from employ;

-- substring 
select substring("hello word ",2);
select substring("hello word ",2,5);
select substring("hello word ",2,-5);
select substring("hello word ",-5) as "shortname" from employ ;

-- replace 
SELECT REPLACE(fname, "mohammad", "rihan") FROM employ;

-- reverse 
select reverse(lname) from employ;
select * from employ ;
-- upper and lower 
select upper(lname) from employ;
--  trim   // to remove the extra space 
-- unique  it is a clouse in sql qurey 
-- check  ''  ' '    ''    ''   ''    
create  table ages ( age int unique, constraint ageisless_then18 check (age>18));
insert into ages values (3);



-- add  a new colum
alter table ages 
add  name varchar(225);

-- delde a table 
alter  table ages 
drop age ;

-- modefy 
alter table ages
modify name varchar(21) ;


-- alter change / change the name of collumn 
ALTER TABLE ages
CHANGE name fname VARCHAR(23);



-- remane a table 
alter table ages 
rename to parties ;
select * from parties;


-- relational data base 

and -- -------------------------------------------------------------------------------------------------------
-- Exanple of how to write the code 
-- USE db_name;
-- CREATE TABLE table_name (
-- column_name1 datatype constraint,
-- column_name2 datatype constraint,
-- column_name2 datatype constraint
-- );
-- CREATE TABLE student (
-- id INT PRIMARY KEY,
-- name VARCHAR(50),
-- age INT NOT NULL
-- );
-- -------------------------------------------------------------------------------------------------------
-- ypes of SQL Commands
-- DDL (Data Definition Language) : create, alter, rename, truncate & drop
-- DQL (Data Query Language): select
-- DML (Data Manipulation Language) : insert, update & delete
-- DCL (Data Control Language) : grant & revoke permission to users
-- TCL (Transaction Control Language) : start transaction, commit, rollback e
-- -----------------------------------------------------------------------------------------------------------



CREATE DATABASE IF NOT EXISTS Company;
USE company;
CREATE TABLE IF NOT EXISTS Employ(
name varchar(255) , 
id int not null PRIMARY KEY );                   --   -- isma not null aaga and picha kahi bhi likh sakta hai   and   , PRIMARY KEY (id)
 
 INSERT INTO Employ value ("Mohammad Shan ",11520);       -- way 1 
 
 INSERT INTO Employ (name, id)                            -- way 2 
VALUES ('Shan', 1152);

INSERT INTO Employ (name, id)                             -- way 3 
VALUES 
('Ali Khan', 11521),
('Zara Ahmed', 11522);

INSERT INTO Employ                                          -- way 4 
SET name = 'Mohammad', id = 115200;

SELECT * FROM Employ;                                      -- to print whole  table 

SELECT name from Employ;                                    -- to print particular table  column 

DROP DATABASE IF EXISTS Shan;                                -- to drop data base 

SHOW DATABASES;                                                -- TO SHOW DATA BASES 
SHOW TABLES ;                                                      -- TO SHOW  TABLE OF CURRENT DATA BASES 

----------------------------------------------------------------------------------------------------------------------------
-- Keys
-- Primary Key
-- It is a column (or set of columns) in a table that uniquely identifies each row. (a unique id)
-- There is only 1 PK & it should be NOT null.
-- Foreign Key
-- A foreign key is a column (or set of columns) in a table that refers to the primary key i
-- There can be multiple FKs.
-- FKs can have duplicate & null values.

-- --------------------------------------------------------------------------------------------------------------------------
-- Constraints
-- SQL constraints are used to specify rules for data in a table.
-- NOT NULL columns cannot have a null value                           coll int NOT NULL
-- UNIQUE all values in column are different                           col2 int UNIQUE
-- PRIMARY KEY makes a column unique & not null but used only for one
-- id int PRIMARY KEY

-- -----------------------------------------------------------------------------------------------------------------------------
CREATE TABLE temp (
    id INT NOT NULL UNIQUE,
    PRIMARY KEY (id)
);

INSERT INTO temp (id) 
VALUES (23), (42);
-- ----------------------------------------------------------------------------------------------------------------------------------
-- Constraints
-- FOREIGN KEY prevent actions that would destroy links between tables
-- 
-- CREATE TABLE temp (
-- cust_id int,
-- FOREIGN KEY (cust_id) references customer(id)
-- );

-- DEFAULT sets the default value of a column
-- ---------------------------------------------------------------------------------------------------------------------------------
-- salary INT DEFAULT 25000
-- --------------------------------------------------------------------------------------------------------------------------------------
CREATE TABLE emp (
id INT,
salary INT DEFAULT 25000);
INSERT INTO emp (id) VALUES (101);
SELECT * FROM emp;
-- -------------------------------------------------------------------------------------------------------------------------------------
-- Constraints
-- CHECK it can limit the values allowed in a column
-- CREATE TABLE city (
-- id INT PRIMARY KEY,
-- city VARCHAR(50),
-- age INT,
-- CONSTRAINT age_check CHECK (age >= 18 AND city="Delhi")
-- );
-- CREATE TABLE newTab (
-- age INT CHECK (age >= 18)
-- );
-- -----------------------------------------------------------------------------------------------------------------------------------------
CREATE DATABASE college;
USE college;
CREATE TABLE student (
rollno INT PRIMARY KEY,
name VARCHAR(50),
marks INT NOT NULL,
grade VARCHAR(1),
city VARCHAR(20)
);
INSERT INTO student
(rollno, name, marks, grade, city)
VALUES
(101, "anil", 78, "C", "Pune"),
(102, "bhumika", 93, "A", "Mumbai"),
(103, "chetan", 85, "B", "Mumbai"),
(104, "dhruv", 96, "A", "Delhi"),
(105, "emanuel", 12, "F", "Delhi"),
(106, "farah", 82, "B", "Delhi");
SELECT  city FROM student;
SELECT DISTINCT city FROM student;                            -- disting is use to remove repete values
SELECT name ,rollno FROM student;
-- clouse  
SELECT  marks FROM student WHERE marks > 80;                    -- to select grater then 80 
SELECT  city FROM student WHERE city = "Mumbai";    
SELECT * FROM student WHERE marks+10 > 80;                -- this is called clouse     -- to select grater then 80 
SELECT * FROM student WHERE marks>80 and city="Mumbai";            -- and operator 
SELECT * FROM student WHERE marks>80 or city="Mumbai";              -- or operator 


-- bitween  , in and not in operator 
SELECT * FROM student WHERE marks BETWEEN 80 AND 90;
SELECT *FROM student WHERE city IN ("Delhi","Mumbai");
SELECT *FROM student Where City not in  ("Delhi");



-- -----------------------------------------------------------------------------------------------------------------------------
-- Where
-- Using Operators in WHERE
-- Arithmetic Operators : +(addition) , -(subtraction), * (multiplication), /(division), %(modulus)
-- Comparison Operators : = (equal to), != (not equal to), > , >-, < , <
-- Logical Operators :
-- AND, OR , NOT, IN, BETWEEN, ALL, LIKE, ANY
-- Bitwise Operators : & (Bitwise AND), I (Bitwise OR)
-- -----------------------------------------------------------------------------------------------------------------------------------------

 -- limit clouse 
 SELECT * FROM student WHERE marks <80 limit 3;
 

-- order by clause 
-- to sort assanding order and desending order of data 
SELECT * FROM student ORDER BY city asc;
SELECT * FROM student ORDER BY city desc;


-- ----------------------------------------------------------------------------------------------------------------------------------
-- agrigate function 
-- preform a calculation on a set of value and return a single value
-- coutn()
-- max()
-- min()
-- sum()
-- avg()

SELECT  MAX(marks) from STUDENT;
SELECT avg(marks) from STUDENT;
SELECT COUNT(rollno) from student;
 
-- ---------------------------------------------------------------------------------------------------------------------------------
-- group by clouse 
-- chizo ko khatta krka nikalna 
-- Group By Clause
-- Groups rows that have the same values into summary rows.
-- It collects data from multiple records and groups the result by one or more column.
-- *Generally we use group by with some aggregation function.
-- Count number of students in each city
SELECT city FROM student GROUP BY city;
SELECT city, count(rollno) FROM student GROUP BY city;
SELECT city,name, count(rollno) FROM student GROUP BY city, name ;
select * from student ;
SELECT city, AVG(marks) 
FROM student 
GROUP BY city 
ORDER BY city;
select grade, count(rollno) from student group by  grade order by grade ;
-- -------------------------------------------------------------------------------------------------------------------
-- payment table 
-- practice question  1:39 apna clooige    
-- ya konsa grade kin baccho  ka aaya ha vo nikal sakta ha is question ko krna ke ghangha 

-- -----------------------------------------------------------------------------------------------------------------

-- having clouse 
-- similar  to  where clouse 
-- apply after conditional statement after grouping 
-- having->  group
-- where -> group 
 
select city , count(name) from student group by city having max(marks)>90;     



select city
FROM student
WHERE grade = "A"
GROUP BY city
HAVING MAX(marks) >= 93
ORDER BY city DESC;

  -- -----------------------------------------------------------------------------------------------------------------
-- General Order
-- SELECT column(s)
-- FROM table_name
-- WHERE condition
-- GROUP BY column(s).
-- HAVING condition
-- ORDER BY column(s) ASC;


-- ------------------------------------------------------------------------------------------------------------------------------------------------
-- table reletr quires 
set sql_safe_updates=0;
UPDATE student
SET grade = 'B'
WHERE marks BETWEEN 80 AND 90;
select * from student;

 -- jin bhi sutudet ka mark 33 sa kam aaya ha usna data delete krna hai 
delete from student where marks<33;
select * from student ;


-- ---------------------------------------------------------------------------------------------------------------------------------------------------
-- revesting forgn key 
-- table name department/course ->  id  and name 
-- tblble name  teacher -> id , name ,department id 
CREATE TABLE depart (
    id INT PRIMARY KEY,
    name VARCHAR(255)
);
SET FOREIGN_KEY_CHECKS = 0;
CREATE TABLE teacher (
    id INT PRIMARY KEY,
    name VARCHAR(255),
    dep_id INT,
    FOREIGN KEY (dep_id) REFERENCES depart(id)
    ON UPDATE CASCADE 
    ON DELETE CASCADE                                                   -- cascading in forgen key 
-- 1 .on deleding cascading 
-- 2 on update cascading

);
INSERT INTO depart(id, name) VALUES (101, "english"), (102, "it");
INSERT INTO teacher(id, name, dep_id) VALUES (101, "adam", 101), (102, "eve", 102);
UPDATE teacher SET dep_id = 111 WHERE dep_id = 102;
SELECT * FROM teacher;
SELECT * FROM depart;
-- -------------------------------------------------------------------------------------------------------------------------------------------
-- TABLE RELATED QURIES 
-- It IS USE TO CHANGE THE SCHEMA 
-- we use alter commant to use this   
-- designe ( column , data type, constrant )
-- 1- addd alter 
-- 2- drop alter 
-- 3 - rename alter
 

create table new1 (id int);
insert into new1 values (23), (32), (32);
select * from new1;

-- to add collum  in it 
alter table new1 
add column number int not null  ;


-- to drop a collumn 
alter table new1
drop column number ;

-- to rename the  table 
alter table new1
rename  to  shankenewtable;


select * from shankenewtable;


-- change column name and data type with constrants

alter table shankenewtable
change column id number int;


-- modify table
alter  table shankenewtable
modify number varchar(255);






--  the different bitwen truncate and drop is drop delede  table with data and truncate  delede data  of table not  data 

truncate table shankenewtable ;
select * from shankenewtable;


-- joins in sql 
-- to combine row  form or more more table based on related col
-- inner jion = common data (intersection of 2 circle )
SELECT * FROM shankenewtable;

CREATE TABLE student1 (studentid INT, name VARCHAR(225));

INSERT INTO student1 VALUES 
(101, "adam"), 
(102, "bob"), 
(103, "casey");

CREATE TABLE course1 
(studentid INT, course VARCHAR(225));

INSERT INTO course1 VALUES 
(102, "english"), 
(105, "maths"), 
(103, "science"), 
(107, "cs");

SELECT * FROM student1  -- as s 
INNER JOIN course1      -- as c // aasa bhi kr sakta hai isko alis khata hai 
ON student1.studentid = course1.studentid;
-- what is ALIas  it is the shortcut of big name of table  ie - stuent as s 


-- left join = left wala circle ka equl 
SELECT * 
FROM student1 AS s
LEFT JOIN course1 AS c
ON s.studentid = c.studentid;

--  right jiom = right circle 
SELECT * 
FROM student1 AS s
RIGHT JOIN course1 AS c
ON s.studentid = c.studentid;



--  full jion  right + left (UNION )
-- LEFT JIOM UNION RIGHT JION = FULLL JION 
SELECT * 
FROM student1 AS s
LEFT JOIN course1 AS c
ON s.studentid = c.studentid
UNION 
SELECT * 
FROM student1 AS s
RIGHT JOIN course1 AS c
ON s.studentid = c.studentid;


-- ELFT EXCLUSIVE JIONT  jo sirf left ka nader exist krta hai 
SELECT * 
FROM student1 AS s
LEFT JOIN course1 AS c
ON s.studentid = c.studentid
WHERE c.studentid IS NULL;                                 --  aasa he right exclusive kr sakta hai 


 -- jion a table to itself 2:48    / self jion 
 
 
 
 
 
 
 
 
 
 
 
 
 --  unions 
--  to use union we must have 1 should have same no. of column 
--  2 column must have silmar data type 
--  3 same order 
 select name from student1    -- atble A
 union                                  -- we can also print all dublicate values by using -> umion all  
 select  name from student1;    -- table B 
 
 
 
 
 
 -- sql sub quries / inner quries / nested quries 

select * from student ;
select avg(marks) from student;

select name , marks  from student where marks> 86;     -- (ststic ha ya )if wE ADD A NEW STUDENT WITH MARKS THE VAERAGE WILL ALSO CHANGE SO WE USE SUB QUIRE METHOD 

SELECT name, marks  from  student where marks > (select avg(marks) from student );    -- ab ya dynamic ho gaya 
 
 
 
 select rollno  from student where rollno%2=0;
 select  name from student where rollno in (102,106,104);
 
  select  rollno ,name from student where rollno in (select rollno from student where rollno%2=0);
  select max(marks )from student where city="Delhi";
--   example with from 
select marks from student where city="Delhi";
select max(marks) from (select marks from student where city="Delhi") as temp1; 

 -- views in sql 
 create view tablle as 	select rollno, name from student ;
 select * from tablle ;
 
 
 
 
 
 
 -- 



































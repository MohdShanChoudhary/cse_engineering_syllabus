-- What is a Database?
-- A database is an organized collection of structured information or data that is stored electronically in a computer system. Databases are designed to efficiently store, retrieve, manage, and manipulate large amounts of data in a way that supports easy access and updates. They are typically managed by a Database Management System (DBMS), which allows users to interact with the data using queries.

-- Key Components of a Database:
-- Tables:

-- Databases store data in tables, which consist of rows (records) and columns (fields). Each row in a table represents a single record, and each column represents a specific attribute of the data.

-- Records (Rows):

-- A record is a single, complete set of data within a table, representing one item or entity (e.g., a customer, a product).

-- Fields (Columns):

-- A field is a single piece of data within a record, such as a name, price, or date of birth.

-- Primary Key:

-- A unique identifier for each record in a table, ensuring that no two records are identical.

-- Foreign Key:

-- A field in one table that links to the primary key in another table, creating a relationship between the two tables.

-- Why Use a Database?
-- Databases play a crucial role in modern computing for several reasons:

-- Efficient Data Management:
-- Organized Storage:

-- Databases provide a structured way to store large volumes of data, making it easier to manage, search, and retrieve information.

-- Data Integrity:

-- Databases enforce rules (like primary and foreign keys) to ensure the accuracy and consistency of data.

-- Data Accessibility:
-- Querying:

-- Users can retrieve specific data quickly using queries, which are requests for information from the database. SQL (Structured Query Language) is the most common language used for querying databases.

-- Concurrent Access:

-- Databases allow multiple users to access and modify data simultaneously without conflicts.

-- Data Security:
-- Access Control:

-- Databases provide mechanisms to control who can access, modify, or delete data, ensuring that sensitive information is protected.

-- Backup and Recovery:

-- Databases can be regularly backed up, and recovery mechanisms are in place to restore data in case of corruption or loss.

-- Data Relationships:
-- Relational Databases:

-- In relational databases, data is stored in related tables. Relationships between tables help in organizing data more efficiently and allow complex queries across multiple tables.

-- Scalability:
-- Handling Large Data Volumes:

-- Databases are designed to handle large amounts of data efficiently, making them suitable for businesses and applications of all sizes.

-- Performance Optimization:

-- Database management systems include tools for optimizing performance, ensuring that even complex queries are processed quickly.

-- Data Analysis and Reporting:
-- Data Mining:

-- Databases support data mining techniques, allowing businesses to extract patterns and insights from large datasets.

-- Reporting Tools:

-- Many databases come with built-in reporting tools or can be integrated with external tools to generate comprehensive reports.

-- Data Integrity and Accuracy:
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



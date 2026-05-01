-- Create the Departments table (parent table  how to delede form perent table 
create database  lovebabber;
use lovebabber;
CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(50)
);

-- Create the Employees table (child table)
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    EmployeeName VARCHAR(50),
    DepartmentID INT,
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID) ON DELETE CASCADE
);

-- Insert data into the Departments table
INSERT INTO Departments (DepartmentID, DepartmentName)
VALUES (1, 'HR'), (2, 'Engineering');

-- Insert data into the Employees table
INSERT INTO Employees (EmployeeID, EmployeeName, DepartmentID)
VALUES (101, 'Alice', 1), (102, 'Bob', 2), (103, 'Charlie', 2);

-- Check initial data
SELECT * FROM Departments;
SELECT * FROM Employees;

-- Delete a department
DELETE FROM Departments WHERE DepartmentID = 2;

-- Check data after deletion
SELECT * FROM Departments;
SELECT * FROM Employees;


-- now give me a example of on delede null 
-- Create the Managers table (parent table)
CREATE TABLE Managers (
    ManagerID INT PRIMARY KEY,
    ManagerName VARCHAR(50)
);

-- Create the Employees table (child table)
CREATE TABLE Employees1 (
    EmployeeID INT PRIMARY KEY,
    EmployeeName VARCHAR(50),
    ManagerID INT,
    FOREIGN KEY (ManagerID) REFERENCES Managers(ManagerID) ON DELETE SET NULL
);

-- Insert data into the Managers table
INSERT INTO Managers (ManagerID, ManagerName)
VALUES (1, 'John'), (2, 'Jane');

-- Insert data into the Employees table
INSERT INTO Employees1 (EmployeeID, EmployeeName, ManagerID)
VALUES (101, 'Alice', 1), (102, 'Bob', 2), (103, 'Charlie', 2);

-- Check initial data
SELECT * FROM Managers;
SELECT * FROM Employees1;

-- Delete a manager
DELETE FROM Managers WHERE ManagerID = 2;

-- Check data after deletion
SELECT * FROM Managers;
SELECT * FROM Employees1;













-- joins 
-- inner joins 
-- Creating the project table
create database jion ;
use jion;
CREATE TABLE project (
    id INT PRIMARY KEY,
    empid INT,
    name VARCHAR(50),
    startdate DATE,
    clientid INT
);

INSERT INTO project (id, empid, name, startdate, clientid)
VALUES 
    (1, 1, 'a', '2021-04-21', 3),
    (2, 2, 'b', '2021-03-12', 1),
    (3, 3, 'c', '2021-01-16', 5),
    (4, 3, 'd', '2021-04-27', 2),
    (5, 5, 'e', '2021-05-01', 4);

-- ***************************************
-- Creating the employ table
-- ***************************************
CREATE TABLE employ (
    id INT PRIMARY KEY,
    fname VARCHAR(50),
    lname VARCHAR(50),
    age INT,
    emailid VARCHAR(100),
    phoneno VARCHAR(20),
    city VARCHAR(50)
);

INSERT INTO employ (id, fname, lname, age, emailid, phoneno, city)
VALUES 
    (1, 'aman', 'proto', 32, 'aman@gmail.com', '898', 'delhi'),
    (2, 'yagya', 'narayan', 44, 'yagya@gmail.com', '222', 'palam'),
    (3, 'rahul', 'bd', 22, 'rahul@gmail.com', '444', 'kolkata'),
    (4, 'jatin', 'hermit', 31, 'jatin@gmail.com', '666', 'raipur'),
    (5, 'pk', 'pandey', 21, 'pk@gmail.com', '555', 'jaipur');

-- ***************************************
-- Creating the client table
-- ***************************************
CREATE TABLE client (
    empid INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    age INT,
    emailid VARCHAR(100),
    phoneno VARCHAR(20),
    city VARCHAR(50)
);

INSERT INTO client (empid, first_name, last_name, age, emailid, phoneno, city)
VALUES 
    (3, 'mac', 'rogers', 47, 'mac@hotmail.com', '333', 'kolkata'),
    
    (1, 'peter', 'jain', 24, 'peter@abc.com', '111', 'delhi'),
    (5, 'sushant', 'aggarwal', 23, 'sushant@yahoo.com', '45454', 'hyderabad'),
    (2, 'pratap', 'singh', 36, 'p@xyz.com', '77767', 'mumbai');   
    
    
-- inner join 

    SELECT 
    p.name AS ProjectName,
    e.fname AS EmployeeName,
    c.first_name AS ClientName
FROM project p
INNER JOIN employ e ON p.empid = e.id
INNER JOIN client c ON p.clientid = c.empid;

-- Enlist  name id  
select e.fname,e.lname,p.id,p.name  ,e.id from employ as e inner join 
project as p on e.id=p.id;



-- fetch all the employ id and contact for jaipur and hadrabad client
SELECT e.id,  e.phoneno , c.first_name, c.last_name ,c.empid
FROM employ AS e 
INNER JOIN client AS c 
ON e.id = c.empid where e.city="jaipur" and c.city="hyderabad";


-- left join 
-- featch put each product  allocateed to each  employ 
select * from  employ as e left join 
project as p on  e.id = p.empid;

-- right join 
-- list all the project along with the employ name and their respective allounce email id
select p.id ,p.name,e.fname,e.lname,e.emailid from  employ as e 
right join project as p 
on e.id =p.empid;

-- cross join 
-- list all the possible combination employ name and the project 
select e.lname,e.fname,p.id,p.name from employ  as e  cross join project as p ;
-- can we join  without  using join keyword 
-- yes
-- select * form  lefttable , righttable 
-- where lefttable id = righttable id ;
select e.fname,e.lname,p.id,p.name  ,e.id from employ as e ,
project as p where e.id=p.id;









-- set operation 
-- same type of column and same number of column  
-- set operation is apply on rows 
-- Create the first table
CREATE TABLE uniontable (
    id INT,
    name VARCHAR(22),
    rollno VARCHAR(21)
);

-- Insert data into the first table
INSERT INTO uniontable VALUES 
    (1, 'a', 'enginner'), 
    (2, 'b', 'salesman'), 
    (1, 'c', 'manager'),
    (1, 'c', 'salesman'),
    (1, 'e', 'enginner');

-- Create the second table
CREATE TABLE uniontable2 (
    id INT,
    name VARCHAR(22),
    rollno VARCHAR(21)
);

-- Insert data into the second table
INSERT INTO uniontable2 VALUES 
    (3, 'c', 'manager'),
    (6, 'f', 'markiting'),
    (7, 'g', 'salesmen');

-- Perform the UNION operation
SELECT * FROM uniontable
UNION
SELECT * FROM uniontable2;


-- list  all the employs who work as a selsmen 
SELECT * FROM uniontable WHERE rollno = "salesman"
UNION
SELECT * FROM uniontable2 WHERE rollno = "salesman";

-- list out all the dipartment who work for both department  (this is intersection )
select * from uniontable inner join uniontable2 using(id);
-- ----------------------------------
-- union sa samajh nahi aaya       - 
-- love babber wali vedio mai      -
-- -----------------------------------





-- subquries 
-- alternative to join
 -- outer quire depend upon inner quirey 
-- quirey ka andar quirey 
-- first inner quirey emplement then outer 
-- use with whehe form and select clouse 
-- i will use on clint employ and project 
-- employ where age > 30 
select * from  employ where age in (select age from employ  where age >30);
select  * from employ where age > 30;                                            -- both work same

-- employ detels  working with more then 1 project 
SELECT * 
FROM employ 
WHERE id IN (
    SELECT empid 
    FROM project 
    GROUP BY empid 
    HAVING COUNT(empid) > 1
);


 -- single value subquires 
 select * from employ where age >(select avg(age) from employ );
 
 -- -----------------------------------
 -- 3ed oldest from employ            -
 -- corelated subquri samaj nahi aai  -
-- ------------------------------------




-- views in sql 
select * from employ ;
CREATE VIEW viewname AS SELECT id FROM employ;

SELECT * FROM viewname;


















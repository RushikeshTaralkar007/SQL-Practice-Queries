CREATE DATABASE emp;

use emp;

CREATE TABLE Employees(
ID INT,
Name VARCHAR(50),
Age INT,
City VARCHAR(50),
Department VARCHAR(50),
Salary int
);


INSERT INTO Employees VALUES
(1,'Rahul',28,'Mumbai','IT',60000),
(2,'Priya',25,'Dehli','Marketing',45000),
(3,'Amit',30,'Bangloru','Finance',70000),
(4,'Sneha',27,'Mumbai','IT',65000),
(5,'Rushi',21,'Pune','HR',50000);

-- Q1) How do you retrieve all columns from a table
Select * from Employees;


-- Q2) Retrive The Column Details ---
select Name FROM Employees;



-- Q3) How do you retrieve multiple columns from a table

select Name, Salary FROM Employees;



-- Q4) How do you retrieve employee names and their departments from the Employees table

Select Name , Department FROM Employees;


-- Q5) Can the SELECT statement retrieve numeric values without a table
-- > YES

Select 10+5;


-- Q6) How do you assign an alias to a column
-- > YES 

select Name AS Employee_Name 
FROM Employees;


-- Q7) Is the AS keyword mandatory for aliases
-- > NO 

select Name Emp_Name
FROM Employees;


-- Q8) How do you assign aliases to multiple columns

SELECT Name AS Emp, Salary AS Income
FROM Employees;


-- Q9) How do you calculate annual salary using SELECT

Select Salary *12 AS Annual_Salary 
From Employees;


-- Q10) How do you add two numbers using SELECT
-- > Yes

Select 10+20;



 
PS C:\Desktop\SQL\SQL_Basics> git remote add origin https://github.com/RushikeshTaralkar007/SQL-Practice-Queries.git 
fatal: not a git repository (or any of the parent directories): .git
PS C:\Desktop\SQL\SQL_Basics> 

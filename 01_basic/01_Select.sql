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

-- Q11) How do you subtract numbers using SELECT
-- > Yes 

select 50-20;
 
 
-- Q12) How do you multiply & Divide numbers using SELECT
-- > Yes 

select 50*2;
select 50/2;

-- Q13) How do you display all employee IDs and names

select ID , Name From Employees;

-- Q14) How do you retrieve the city and salary of employees

select City , Salary From Employees;


-- Q15) How do you rename Salary as Monthly_Salary

select Salary As Monthly_Salary From Employees;


-- Q16) How do you add 1000 bonus to each employee salary

select NAme , Salary +1000 AS Salary_With_Bonus From Employees;


-- Q17) How do you reduce 500 from each employee salary

select NAme , Salary - 500 AS Adjust_Salary  From Employees;


-- Q18) How do you double the salary using SELECT

select Name, Salary *2 As Double_Salary From Employees;


-- Q19) How do you calculate salary after tax deduction of 10%

select Name , Salary *0.10  As Salary_After_Tax From Employees;


-- Q20) How do you display a message with employee names

select Name , "Active Employee" As Status from Employees;


-- Q21) How do you display a fixed company name with employee names 

select Name , "ABC Comapny" As company From Employees;


-- Q22) How do you show salary with a constant tax rate

select Salary , 0.1 As Tax_Rate From Employees;


-- Q23) How do you display employee names in uppercase

select upper(Name) From Employees;

-- Q24) How do you display employee names in lowercase

select lower(Name) From Employees;


-- Q25) How do you count total employees

select count(*) From Employees;

-- Q26) How do you find the maximum salary

select max(Salary) From Employees;

-- Q27) How do you find the minimum salary

select min(Salary) From Employees;


-- Q28) How do you calculate salary after adding 5000 increment

select Salary +5000 As Increment_Salary From Employees;

-- Q29) How do you calculate half of each salary

Select Salary /2 As Half_Salary From Employees;

-- Q30) How do you display employee information with a constant column named Company

select Name , Department , "XYZ Company" As Company_Name From Employees;









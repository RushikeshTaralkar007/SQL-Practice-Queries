CREATE DATABASE Info;

use Info;

CREATE TABLE Employees(
ID INT,
Name VARCHAR(50),
Age INT,
City VARCHAR(50),
Department VARCHAR(50),
Salary INT 
);


INSERT INTO Employees VALUES
(1,'Rahul',28,'Mumbai','IT',60000),
(2,'Priya',25,'Dehli','Marketing',45000),
(3,'Amit',30,'Bangloru','Finance',70000),
(4,'Sneha',27,'Mumbai','IT',65000),
(5,'Rushi',21,'Pune','HR',50000);


-- Q1)How do you retrieve employees with salary greater than 50000

select * from Employees WHERE Salary >50000;

-- Q2) How do you find employees whose city is Mumbai

select * from Employees WHERE City = 'Mumbai';

-- Q3) How do you retrieve employees whose age is less than 30

select * from Employees WHERE Age > 25;


-- Q4) How do you find employees whose department is IT

select * from Employees where Department = "IT";


-- Q5) How do you retrieve employees with salary equal to 60000

select * from Employees where Salary = 60000;


-- Q6) How do you retrieve employees whose city is Pune

select * from Employees where City = "Pune";


-- Q7) How do you find employees whose department is not HR

select * from Employees where Department != "HR";


-- Q8) How do you retrieve employees whose city is not Delhi

select * from Employees where City !="Dehli";

-- Q9) How do you retrieve employees whose salary is not equal to 45000

select * from Employees where Salary != 45000;

-- Q10) How do you retrieve employees from Mumbai whose salary is greater than 50000

select * from Employees where City = "Mumbai" AND Salary > 50000;

-- Q11) How do you retrieve employees from IT department whose age is greater than 25

select * from Employees Where Department = "IT" AND Age > 25;


-- Q12) How do you retrieve employees from Pune whose salary is less than Eqaul to 60000

select * from Employees where City = "Pune" And Salary <= 60000;

-- Q13) How do you retrieve employees whose age is greater than 25 and salary greater than 50000

select *from Employees Where Age = 25 And salary > 50000;


-- Q14) How do you retrieve employees from Finance department whose salary is above 60000

select * from Employees Where Department = "Finance" And Salary > 60000;

-- Q15) ow do you retrieve employees from Mumbai or Pune

select * from Employees Where City = "Mumbai" Or City = "Pune";


-- Q16) How do you retrieve employees from IT or HR department

select * from Employees Where Department = "IT" OR Department = "HR";


-- Q17) How do you retrieve employees whose salary is 50000 or 60000

select * from Employees Where Salary = 50000 OR Salary = 60000 ;

-- Q18) How do you retrieve employees whose city is Delhi or Bangalore

select * from Employees where City = "Dehli" OR City = "Bangloru";


-- Q19) How do you retrieve employees whose age is 25 or 30

select * from Employees where Age = 25 OR Age = 30;

-- Q20) How do you retrieve employees whose salary is between 40000 and 70000

select * from EMployees where Salary between 40000 And 70000;













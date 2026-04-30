use info;

create table Emp(
Emp_ID INT PRIMARY KEY,
Name VARCHAR(50),
Dept_ID INT,
Salary INT,
City VARCHAR(50)
);

drop table Emp;

create table Department(
Dept_ID INT PRIMARY KEY,
Dept_Name Varchar(50),
Location Varchar(50)
);

drop table Department;

INSERT INTO Emp VALUES
(1,'Amit',101,60000,'Pune'),
(2,'Sneha',102,45000,'Mumbai'),
(3,'Rahul',101,70000,'Pune'),
(4,'Priya',103,80000,'Delhi'),
(5,'Vikas',101,55000,'Pune'),
(6,'Neha',102,48000,'Mumbai'),
(7,'Suresh',103,90000,'Delhi'),
(8,'Anita',101,62000,'Pune'),
(9,'Ravi',101,58000,'Nagpur'),
(10,'Kiran',102,47000,'Mumbai'),
(11,'Meena',103,85000,'Delhi'),
(12,'Soham',101,65000,'Pune'),
(13,'Pooja',102,50000,'Mumbai'),
(14,'Nikhil',101,72000,'Nagpur'),
(15,'Divya',103,88000,'Delhi'),
(16,'Arjun',101,61000,'Pune'),
(17,'Swati',102,46000,'Mumbai'),
(18,'Omkar',101,59000,'Pune'),
(19,'Rohit',103,92000,'Delhi'),
(20,'Tejas',101,64000,'Nagpur');



INSERT INTO Department VALUES 
(101,'IT','Pune'),
(102,'HR','Mumbai'),
(103,'Finance','Delhi'),
(104,'Marketing','Bangalore'),
(105,'Sales','Chennai');


select * from Emp;

select * from Department;


-- !!!!!!!!!!!! Inner Joins !!!!!!!!!!!!!! -- 

-- Q1) Show employee name with department name

select E.Name , D.Dept_Name
from Emp E
Inner join Department D
On E.Dept_ID = D.Dept_ID;


-- Q2) Show all employees with department and location


select E.Name , D.Dept_Name, D.Location
from Emp E
Inner join Department D
On E.Dept_ID = D.Dept_ID;


 -- Q3) Count employees in each department

select D.Dept_Name, count(*) As Total
from Emp E 
join Department D On E.Dept_ID = D.Dept_ID 
Group By D.Dept_Name;



-- Q4) 



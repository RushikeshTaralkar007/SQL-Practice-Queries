use info;

create Table Info(
Emp_ID INT Primary key,
Name VARCHAR(50),
Department VArchar(50),
Salary INT,
Age INT,
City varchar(50)
);


INSERT INTO Info VALUES
(1, 'Amit', 'IT', 60000, 28, 'Pune'),
(2, 'Sneha', 'HR', 45000, 26, 'Mumbai'),
(3, 'Rahul', 'IT', 70000, 30, 'Pune'),
(4, 'Priya', 'Finance', 80000, 32, 'Delhi'),
(5, 'Vikas', 'IT', 55000, 25, 'Pune'),
(6, 'Neha', 'HR', 48000, 27, 'Mumbai'),
(7, 'Suresh', 'Finance', 90000, 35, 'Delhi'),
(8, 'Anita', 'IT', 62000, 29, 'Pune'),
(9, 'Ravi', 'IT', 58000, 24, 'Nagpur'),
(10, 'Kiran', 'HR', 47000, 26, 'Mumbai'),
(11, 'Meena', 'Finance', 85000, 33, 'Delhi'),
 (12, 'Soham', 'IT', 65000, 31, 'Pune'),
(13, 'Pooja', 'HR', 50000, 28, 'Mumbai'),
(14, 'Nikhil', 'IT', 72000, 29, 'Nagpur'),
(15, 'Divya', 'Finance', 88000, 34, 'Delhi'),
(16, 'Arjun', 'IT', 61000, 27, 'Pune'),
(17, 'Swati', 'HR', 46000, 25, 'Mumbai'),
(18, 'Omkar', 'IT', 59000, 26, 'Pune'),
(19, 'Rohit', 'Finance', 92000, 36, 'Delhi'),
(20, 'Tejas', 'IT', 64000, 30, 'Nagpur');


select * from Info;

-- Q1)  Find total number of employees

select count(*) As Total_Employee From Info;


-- Q2) Find total salary of all employees

select Sum(Salary) As Total_Salary From Info;

-- Q3) Find average salary

select AVG(Salary) AS Average_Salary From Info;

-- Q4) Find maximum salary

select max(Salary) AS Maximum_Salary From Info;

-- Q5) Find minimum salary

select Min(Salary) As Minimum_Salary From Info;

-- Q6)  Count employees in IT department

select count(*) AS IT_Department From Info Where Department = "IT";

-- Q7) Total salary in HR department

select sum(Salary) AS Total_HR_Salary From Info Where Department = "HR";

-- Q8) Average salary in Finance department

select AVG(Salary) AS Finance_Dep From Info Where Department = "Finance";

-- Q9) Maximum salary in IT department

select Max(salary) AS IT_Dep From Info Where Department ="IT";

-- Q10) Minimum age of employee

select min(Age) As Min_Age From Info;

-- Q11) Count employees from Pune

select count(*) AS Pune_Emp From Info where City = "Pune";


-- Q12)  Average age of employees

select AVG(Age) AS average_age From Info; 

-- Q13) Department-wise employee count

select Department , Count(*) As Total From Info group by Department;


-- Q14) Department-wise average salary

select Department , Avg(Salary) AS Avg_Salary From Info group by Department;

-- Q15) Department-wise max salary

select Department , Max(Salary) AS Max_Salary From Info group by Department;




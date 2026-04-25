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

-- Q16) Count employees per city

select City , count(*) AS City_Count from Info group by City;

-- Q17) Total salary per city

select City, Sum(Salary) AS Total_Salary_Per_City from Info group by City;


-- Q18) Find departments having more than 5 employees

select Department , count(*) As Total_Emp from Info group by Department Having count(*) > 5;


-- Q19)  Find average salary of employees older than 28

select Avg(Salary) from Info where Age > 28;


-- Q20) Find highest salary employee name

select Name, Salary  from Info where Salary=(select Max(Salary) from Info);

-- Q21) Count employees older than 30

select count(*) AS Count_Of_Emp from Info where Age > 30;

-- Q22) City-wise average salary

select City, Avg(Salary) AS City_AVG_Salary from Info group by City;


-- Q23) Cities having more than 3 employees

select City, Count(*) AS City_Count From Info group by City having count(*) >3;


-- Q24) Departments with total salary > 200000

select Department , sum(Salary) AS Dep_Total_Salary from Info group by Department having sum(Salary) > 200000;


-- Q25) Employee with lowest salary

select Name, Salary  AS Low_Salary_Emp from Info where Salary = (select min(Salary) From Info);


-- Q26) Count distinct departments

select count(distinct Department) From Info;

-- Q27) Count distinct cities

select count(distinct City ) From Info;


-- Q28) Total employees per age group

select Age , count(*) from Info group by Age;


-- Q29) Average salary per age group

select Age , Avg(Salary) from Info group by Age;


-- Q30)  Max salary per city

select City , Max(Salary) from Info group by City;


-- Q31) Min salary per city

select City , Min(Salary) From Info group by City;


-- Q32) Total salary per age group

select Age , Sum(Salary) From Info group by Age;

-- Q33)  Employees earning above average salary

select Name , Salary from Info where Salary > (select Avg(Salary) from Info);


-- Q34) Count employees earning below 60000

select Name , Salary from Info where Salary < 60000;


-- Q35) Total salary of employees in Pune IT department

Select sum(Salary) from Info where City= "Pune" and Department = "IT";


-- Q36) Average salary of Delhi Finance employees

select Avg(Salary) from Info where City= "Delhi" And Department = "Finance";


-- Q37) Highest salary in Mumbai

select max(Salary) from Info Where City="Mumbai";


-- Q38) Count employees in each department & city

select Department , City , Count(*) from Info group by Department , City;


-- Q39) Total salary company-wide + employee count

select count(*) AS Total_Emp , sum(Salary) as Total_Salary from Info;




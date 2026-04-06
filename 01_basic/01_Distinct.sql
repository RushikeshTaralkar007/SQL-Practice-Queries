-- -- Q) Why is DISTINCT important in real-world data?
-- Removes duplicate records
-- Helps in clean data analysis
-- Useful in reporting and dashboards
-- Important in data engineering pipelines


Use info;

CREATE TABLE Employee(
ID INT,
Name VARCHAR(50),
Age INT,
City VARCHAR(50),
Department VARCHAR(50),
Salary int
);

INSERT INTO Employee VALUES
(1, 'Amit', 28, 'Mumbai', 'IT', 60000),
(2, 'Priya', 25, 'Pune', 'HR', 45000),
(3, 'Rahul', 30, 'Delhi', 'Finance', 70000),
(4, 'Sneha', 27, 'Mumbai', 'IT', 65000),
(5, 'Rohan', 32, 'Bangalore', 'Marketing', 50000),
(6, 'Anita', 29, 'Pune', 'Finance', 55000),
(7, 'Vikas', 31, 'Delhi', 'IT', 72000),
(8, 'Karan', 26, 'Mumbai', 'HR', 48000),
(9, 'Neha', 24, 'Bangalore', 'Marketing', 52000),
(10, 'Arjun', 35, 'Pune', 'IT', 80000),
(11, 'Deepa', 28, 'Mumbai', 'Finance', 60000),
(12, 'Suresh', 40, 'Delhi', 'HR', 75000),
(13, 'Meena', 27, 'Pune', 'IT', 68000),
(14, 'Ravi', 33, 'Bangalore', 'Finance', 72000),
(15, 'Pooja', 29, 'Mumbai', 'Marketing', 51000),
(16, 'Aakash', 31, 'Delhi', 'IT', 69000),
(17, 'Divya', 26, 'Pune', 'HR', 47000),
(18, 'Nikhil', 34, 'Mumbai', 'IT', 85000),
(19, 'Kavita', 28, 'Bangalore', 'Finance', 62000),
(20, 'Manish', 36, 'Delhi', 'Marketing', 53000);


Select * from Employee;

-- Q1) Get All Unique Cities From Employees Table 

select distinct City From Employee;



-- Q2) Get Unique Departments

select distinct Department From Employee;



-- Q3) Get Unique Employee Names 

Select distinct Name From Employee;



-- Q4) Get Unique Salaries 

Select distinct Salary From Employee;


-- Q5) Get unique combinations of City and Department

Select distinct City ,Department From Employee;


-- Q6) Find unique cities where employees work in IT department

Select distinct City From Employee Where Department = "IT";


-- Q7) Get unique departments with salary > 50000

Select distinct Department From Employee Where Salary > 50000;


-- Q8) Get unique cities ordered alphabetically

Select distinct City From Employee ORDER BY City;


-- Q9) Get unique departments sorted by name

Select distinct Department From Employee ORDER BY Department;


-- Q10) Get unique cities but show only top 3

Select distinct City From Employee Limit 3;


-- Q11) Count number of unique cities

Select Count(distinct City) As Count_Of_City  From Employee;


-- Q12) Count unique departments

select Count(distinct Department) As Count_Of_Department From Employee;

-- Q13) Count Unique Salaries 

Select Count(distinct Salary) As Count_Of_Salary From Employee;

-- Q14) Get Unique Names Starting with "A"

select distinct Name From Employee where Name Like "A%";

-- Q15) Get Unique Employyes From Mumbai 

select distinct Name From Employee Where City = "Mumbai";

-- Q16) Get Unique Combination Of City And Salary 

select distinct City , Salary From Employee;


-- Q17) Get unique salaries in decending order 

select distinct Salary From Employee order by Salary desc;

-- Q18) Get Unique Departments in which employees are above 25

select distinct Department From Employee Where Age > 25;

-- Q19) Get Unique Cities where salary > 60000

select distinct City From Employee Where Salary > 60000;


-- Q20) Get Unique Names and cites together

select distinct Name , City From Employee;

-- Q21) Get Unique combination of Name & Department 

select distinct Name, Department From Employee;


-- Q22) Get unique Department Where city is pune

select distinct Department From Employee Where City = "Pune";


-- Q23) Get Unique Cities where department is HR

select distinct City From Employee where Department = "HR";


-- Q24) Get unique employees in IT department 

select distinct Name From Employee Where Department = "IT";


-- Q25) Get unique Salary Values Between 40000 and 70000

select distinct Salary From Employee where Salary Between 40000 and 70000;


-- Q26) Get unique cities excluding Mumbai 

select distinct City From Employee where City <> "Mumbai";

-- Q27) Get a unique name excluding Amit 

select distinct Name From Employee where Name <> "Amit";

-- Q28) Get Unique department excluding Finance

select distinct Department From Employee Where Department <> "Finance";

-- Q29) Get  Unique names in Alphabetical Order 

select distinct Name From Employee Order By Name ASC;

-- Q30) Get  Unique cities where employees are above 30

select distinct City From Employee where Age > 30;




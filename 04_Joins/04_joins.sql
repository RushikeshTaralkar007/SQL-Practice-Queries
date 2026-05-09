use info;

-- Table 1 -- 

Create Table Emp(
Emp_Id INT PRIMARY KEY,
Name VARCHAR(50),
Dept_Id INT,
Salary INT,
City VARCHAR(50)
);

drop table emp;
-- Table 2 -- 

Create Table Department(
Dept_Id INT PRIMARY KEY,
Dept_Name VARCHAR(50),
Location VARCHAR(50)
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


Select * from Emp;

Select * from Department;


-- Q1) Show employee name with department name

select E.Name , D.Dept_Name
From Emp E 
Inner Join Department D
ON E.Dept_Id = D.Dept_Id;


-- Q2) Show all employees with department and location

SELECT E.Name, D.Dept_Name, D.Location
FROM Emp E
Inner join DEPARTMENT D
ON E.Dept_ID = D.Dept_ID;


-- Q3) Count employees in each department

SELECT D.Dept_Name, COUNT(*) AS Total
FROM Emp E
JOIN Department D ON E.Dept_ID = D.Dept_ID
GROUP BY D.Dept_Name;


-- Q4) Show employees working in Pune department

SELECT E.Name, D.Dept_Name
FROM Emp E
JOIN DEPARTMENT D ON E.Dept_ID = D.Dept_ID
WHERE D.Location = 'Pune';


-- Q5) Show employees with salary > 60000 and department name


SELECT E.Name, E.Salary, D.Dept_Name
FROM Emp E
JOIN DEPARTMENT D ON E.Dept_ID = D.Dept_ID
WHERE E.Salary > 60000;


-- Q6) Show department-wise average salary

SELECT D.Dept_Name, AVG(E.Salary)
FROM Emp E
JOIN DEPARTMENT D ON E.Dept_ID = D.Dept_ID
GROUP BY D.Dept_Name;


-- Q7) Show highest salary in each department

SELECT D.Dept_Name, MAX(E.Salary)
FROM Emp E
JOIN DEPARTMENT D ON E.Dept_ID = D.Dept_ID
GROUP BY D.Dept_Name;

-- Q8) Show employees and their department (LEFT JOIN)

SELECT E.Name, D.Dept_Name
FROM Emp E
LEFT JOIN DEPARTMENT D
ON E.Dept_ID = D.Dept_ID;


-- Q9) Show all departments even without employees

SELECT D.Dept_Name, E.Name
FROM DEPARTMENT D
LEFT JOIN Emp E
ON D.Dept_ID = E.Dept_ID;


-- Q10)  Show employees who do not belong to any department


SELECT E.Name
FROM Emp E
LEFT JOIN DEPARTMENT D
ON E.Dept_ID = D.Dept_ID
WHERE D.Dept_ID IS NULL;

-- Q11) Show departments with no employees

SELECT D.Dept_Name
FROM DEPARTMENT D
LEFT JOIN Emp E
ON D.Dept_ID = E.Dept_ID
WHERE E.Emp_ID IS NULL;


-- Q12) Show employee count by department location

SELECT D.Location, COUNT(*) 
FROM Emp E
JOIN DEPARTMENT D ON E.Dept_ID = D.Dept_ID
GROUP BY D.Location;


-- Q13) Show employees from Mumbai with department name

SELECT E.Name, D.Dept_Name
FROM Emp E
JOIN DEPARTMENT D ON E.Dept_ID = D.Dept_ID
WHERE E.City = 'Mumbai';


-- Q14) Show total salary by department

SELECT D.Dept_Name, SUM(E.Salary)
FROM Emp E
JOIN DEPARTMENT D ON E.Dept_ID = D.Dept_ID
GROUP BY D.Dept_Name;


-- Q15)  Show departments having avg salary > 60000

SELECT D.Dept_Name, AVG(E.Salary)
FROM Emp E
JOIN DEPARTMENT D ON E.Dept_ID = D.Dept_ID
GROUP BY D.Dept_Name
Having AVG(E.Salary) > 60000;


-- Q16) Show employee with highest salary in each department


SELECT E.Name, D.Dept_Name, E.Salary
FROM Emp E
JOIN DEPARTMENT D ON E.Dept_ID = D.Dept_ID
WHERE E.Salary = (
    SELECT MAX(Salary) 
    FROM Emp
    WHERE Dept_ID = E.Dept_ID
);



-- Q17) Show department-wise employee count (including empty dept)

SELECT D.Dept_Name, COUNT(E.Emp_ID)
FROM DEPARTMENT D
Left join Emp E
ON D.Dept_ID = E.Dept_ID
GROUP BY D.Dept_Name;


-- Q18) Show employees working in same city as department location

SELECT E.Name, D.Dept_Name
FROM Emp E
JOIN DEPARTMENT D
ON E.Dept_ID = D.Dept_ID
WHERE E.City = D.Location;


-- Q19) Show employee names with department sorted by salary

SELECT E.Name, D.Dept_Name, E.Salary
FROM Emp E
JOIN DEPARTMENT D ON E.Dept_ID = D.Dept_ID
ORDER BY E.Salary DESC;


-- Q20) Show total employees and total salary per department

SELECT E.Name, D.Dept_Name, E.Salary
FROM Emp E
JOIN DEPARTMENT D ON E.Dept_ID = D.Dept_ID
order by E.Salary DESC;


-- Q21) Show employees working in Delhi department

select E.Name 
from Emp E 
join Department D 
on E.Dept_ID = D.Dept_ID
where D.Location = "Delhi";


-- Q22) Show employees with salary between 50k–80k with dept

select E.Name , D.Dept_Name, E.Salary 
from Emp E 
join Department D 
on E.Dept_ID = D.Dept_ID 
where E.Salary between 50000 and 80000;


-- Q23) Show IT department employees

select E.Name
from Emp E
join Department D
on E.Dept_ID = D.Dept_ID
where D.Dept_Name = "IT";


-- Q24)  Show HR employees from Mumbai

select E.Name , D.Dept_Name
from Emp E 
join Department D
On E.Dept_ID = D.Dept_ID
where D.Dept_Name = "HR" And City = "Mumbai";


-- Q25) Show Finance employees earning > 80000

select E.Name
from Emp E 
join Department D 
On E.Dept_ID = D.Dept_ID 
where D.Dept_Name = "Finance" And E.Salary > 80000;


-- Q26) Show employees whose salary is above dept average

select E.Name , E.Salary
from Emp E 
where E.Salary > ( select Avg(E.Salary) from Emp where Dept_ID = E.Dept_ID);


-- Q27)  Show departments having more than 3 employees

select D.Dept_Name 
from Emp E 
join Department D 
On E.Dept_ID = D.Dept_ID 
group by D.Dept_Name 
Having count(*) >3;

-- Q28)  Employees NOT in dept city

select E.Name 
from Emp E
join Department D 
on E.Dept_ID = D.Dept_ID 
where E.City != D.Location;


-- Q29) Locations with total salary > 200000

select D.Location 
from Emp E 
Join Department D 
on E.Dept_ID = D.Dept_ID 
group by D.Location 
having Sum(salary) > 200000;


-- Q30) Departments with min salary < 50000.

select D.Dept_Name 
from Emp E
join Department D 
on E.Dept_ID = D.Dept_ID
group by D.Dept_Name 
having min(Salary) < 50000;















use info;

Create Table Ep(
Emp_ID INT,
Name VARCHAR(50),
Department VARCHAR(50),
Salary INT,
Manger_ID INT
);

INSERT INTO Ep VALUES 
(1, 'Amit', 'HR', 40000, 5),
(2, 'Sneha', 'IT', 60000, 5),
(3, 'Rahul', 'IT', 55000, 2),
(4, 'Priya', 'Sales', 45000, 5),
(5, 'Vikas', 'Management', 80000, NULL),
(6, 'Neha', 'HR', 42000, 1);


select * from Ep;

-- Q1) Employees earning more than average salary

select Name, Salary from Ep where Salary > (select AVG(Salary) From Ep);


-- Q2)  Employee with maximum salary

select Name,Salary From Ep where Salary = (select Max(Salary) From Ep);


-- Q3) Employee with minimum salary

select Name , Salary From Ep where Salary = (select Min(Salary) from Ep);

-- Q4) Employees in IT department

select Name, Department from Ep where  Department = "IT";

-- Q5) Employees earning less than Amit

select Name from Ep where Salary < (select Salary from Ep where Name = "Amit");


-- Q6) Second highest salary

select Max(Salary) from Ep where Salary < (select MAx(Salary) from Ep);


-- Q7) Employees managed by Vikas

select Name From Ep where Manger_ID  = (select Emp_ID from Ep where Name = 'Vikas');



-- Q8) Managers names

select Name from Ep where Emp_ID In ( select Manger_ID From Ep Where Manger_ID Is Not Null);


-- Q9) Find salary greater than Amit's salary.

select * from Ep where Salary > (select Salary From Ep where Name = 'Amit');


-- Q10) Find salary less than Sneha's salary.

select * from Ep where Salary < (select Salary from Ep where Name = 'sneha');


-- Q11) Find employees from departments having salary above 50000

select * from Ep where Department In ( select Department From Ep where Salary > 50000);


-- Q12) Find employees whose manager exists.

select * from Ep where Manger_ID In ( select Emp_ID from Ep);


-- Q13) Find employees in departments having more than one employee.

select * from Ep where Department In ( select Department from Ep group by Department having count(*) > 1);


-- Q14) Employees earning above overall average and department average.

select * from Ep E where Salary > ( Select AVG(Salary) From Ep) AND Salary > (select AVG(Salary) from Ep X where X.Department = E.Department);


-- Q15) Employees not having manager.

select * from Ep where Manger_ID is NULL;








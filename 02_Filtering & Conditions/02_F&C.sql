use info;

Create Table emp(
Emp_ID INT,
Name Varchar(50),
Department Varchar(50),
Salary INT,
City varchar(50),
Age INT,
Joining_Date DATE,
Email Varchar(100)
);


INSERT INTO emp VALUES
(1,'Amit','IT',60000,'Pune',25,'2022-01-10','amit@gmail.com'),
(2,'Rohit','HR',40000,'Mumbai',28,'2021-03-15','rohit@yahoo.com'),
(3,'Sneha','IT',75000,'Pune',30,'2020-07-20','sneha@gmail.com'),
(4,'Priya','Finance',50000,'Delhi',27,'2023-02-01','priya@gmail.com'),
(5,'Karan','IT',30000,'Mumbai',24,'2022-11-11','karan@gmail.com'),
(6,'Neha','HR',45000,'Pune',29,'2021-09-09','neha@yahoo.com'),
(7,'Rahul','Finance',80000,'Delhi',35,'2019-05-05','rahul@gmail.com'),
(8,'Pooja','IT',55000,'Pune',26,'2022-08-18','pooja@gmail.com'),
(9,'Vikas','HR',38000,'Mumbai',31,'2020-12-12','vikas@yahoo.com'),
(10,'Anjali','Finance',70000,'Delhi',33,'2018-06-25','anjali@gmail.com'),
(11,'Arjun','IT',65000,'Pune',28,'2021-04-14','arjun@gmail.com'),
(12,'Meena','HR',42000,'Mumbai',27,'2023-01-01','meena@yahoo.com'),
(13,'Ramesh','Finance',48000,'Delhi',40,'2017-10-10','ramesh@gmail.com'),
(14,'Sita','IT',72000,'Pune',29,'2020-02-20','sita@gmail.com'),
(15,'Deepak','HR',39000,'Mumbai',26,'2022-05-05','deepak@yahoo.com'),
(16,'Kavita','Finance',51000,'Delhi',32,'2021-07-07','kavita@gmail.com'),
(17,'Manish','IT',58000,'Pune',27,'2022-09-09','manish@gmail.com'),
(18,'Sunita','HR',46000,'Mumbai',30,'2020-11-11','sunita@yahoo.com'),
(19,'Alok','Finance',62000,'Delhi',34,'2019-03-03','alok@gmail.com'),
(20,'Nina','IT',54000,'Pune',25,'2023-06-06','nina@gmail.com');


select * from emp;

-- !!!!! Operators Questions !!!!! -- 

-- Q1) Salary > 50000

select * from emp where Salary > 50000;

-- Q2) Salary < 40000

select * from emp where Salary < 40000;

-- Q3) Age >= 30

select * from emp where Age >= 30;


-- Q4) Department = 'IT'

select * from emp Where Department = "IT";


-- Q5) City = 'Pune'

select * from emp where City = "Pune";

-- Q6) Salary != 60000

select * from emp where salary != 60000;


-- Q7) Age < 25

select * from emp where Age < 25;

-- Q8) salary >= 70000

select * from emp where Salary >= 70000;

-- Q9) Department = HR

select * from emp where Department = 'HR';

-- Q10) City != 'Mumbai'

select * from emp where City != 'Mumbai';

-- Q11) IT & Salary > 60000

select * from emp where Department = 'IT' and Salary > 60000;

-- Q12) HR OR Finance

select * from emp where Department = "HR" OR   Department ="Finance";

-- Q13) Pune AND Salary > 50000

select * from emp where City = "Pune" And Salary > 50000;

-- Q14) Age > 25 AND < 30

select * from emp Where Age > 25 And Age <30;

-- Q15) Not IT 

select * from emp where NOT Department = "IT"; 

-- Q16) NOT Pune

select * from emp where NOT City = "Pune";

-- Q17) Salary > 50000 OR Age < 25

select * from emp where Salary > 50000 and Age < 25;

-- Q18) Finance AND Salary < 60000

select * from emp where Department = "Finance" and Salary < 60000;


-- !!!! BETWEEN Questions !!!! -- 

-- Q19) Salary between 40000 and 60000

select * from emp where Salary between 40000 and 60000;

-- Q20) Age between 25 and 30

select * from emp where Age between 25 and 30;

-- Q21) Joining between 2020–2022

select * from emp where Joining_Date Between '2020-01-01' and '2022-01-01';

-- Q22) Salary between 50000–80000

select * from emp where Salary between 50000 and 80000;


-- !!!!! IN / NOT IN !!!!! --


-- Q23) City IN Pune, Mumbai

select * from emp where City IN ('Pune' , 'Mumbai');


-- Q24) Department IN IT, HR

select * from emp where Department IN ('IT' , "HR");

-- Q25) City NOT IN Delhi

select * from emp where City NOT IN ("Delhi");


-- Q26) Salary IN 40000, 50000

select * from emp where Salary IN (40000, 50000);

-- Q27) Department NOT IN Finance

select * from emp where Department NOT IN ("Finance");


-- !!!!! LIKE !!!!! --

-- Q28) Name starts with 'A'

select * from emp where Name Like 'A%';

-- Q29) Name ends with 'a'

select * from emp where Name Like '%a';

-- Q30) Gmail users

select * from emp where Email Like '%gmail.com';

-- Q31) Name contains 'i'

select * from emp where Name Like "%i%";


-- Q32) Name second letter 'a'

select * from emp where Name Like "_a%";

-- Q33) Email yahoo

select * from emp where Email Like "%yahoo.com";


-- !!  NULL !! --

-- Q34) Email is Null 

select * from emp where Email Is Null;

-- Q35) Email NOT NULL

select * from emp where Email Is Not Null;


-- !! Having -- !! 

-- Q36) Avg salary > 40000

select Department , AVG(Salary) From emp group by Department Having AVG(Salary) > 40000;


-- Q37) Count employees > 5

select Department , Count(*) from emp group by Department Having Count(*) > 5;

-- Q38) Max salary > 70000

select Department , Max(Salary) from emp group by Department Having Max(Salary) > 70000;


-- !!! CASE WHEN !!! --

-- Q39) Pass/ Fail Salary 

select Name , CASE WHEN Salary > 50000 Then 'High' Else 'Low' End AS Status From emp;


-- Q40) Age category

Select Name , Case when Age < 25 then 'Young'
when Age between 25 And 30 then 'Adult'
Else 'Senior'
End As Category 
from emp;



-- Q41) Department label

select Name , Case when Department = 'IT' then "Tech" Else "Non-Tech" End As DEpartment_Category from emp;


-- Q42) City type

select Name , Case when City = "Pune" then "Local" else "Other" End As City_Type from emp;


-- Q43) Salary grade

select Name , Case when Salary > 70000 then "A" when Salary > 60000 then "B" else "C" End As Salary_Grade from emp;


-- Q44) Salary > 50000 AND Age > 30

select * from emp where Salary > 50000 And Age > 30;

-- Q45) Salary < 50000 OR Department = 'IT'

select * from emp where Salary < 50000 And Department = "IT";

-- Q46) . Age NOT equal to 28

select * from emp where Age != 28;

-- Q47) Department IT but NOT Pune

select * from emp where Department = "IT" And City != "Pune";

-- Q48)  Salary >= 60000 AND <= 80000

select * from emp where Salary >= 60000 And Salary <= 80000;

-- Q49)  Finance employees with age > 30

select * from emp where Department = "Finance" And Age >30;

-- Q50) HR employees with salary < 45000

select * from emp where Department = "HR" and Salary < 45000;


-- Q51) Employees NOT in HR

select * from emp where Department != 'HR';

-- Q52) Salary > 70000 OR city = 'Mumbai'

select * from emp where  City = "Mumbai" OR Salary > 70000;

-- Q53) IT employees with salary < 60000

select * from emp where Department = 'IT' and Salary < 60000;

-- !!!! BETWEEN + IN MIX !!!! --


-- Q54) Salary between 45000–75000 AND IT

select * from emp where Salary between 45000 and 75000 and DEpartment = "IT";


-- Q55) City IN Pune, Delhi AND salary > 60000

select * from emp where City in ('Pune' , 'Delhi') and Salary > 60000;

-- Q56) Salary IN 50000, 60000, 70000 AND Delhi

select * from emp where Salary in (50000,60000,70000) and City = "Delhi";


-- Q57)  Department NOT IN IT,HR 

select * from emp where Department Not in ("IT","HR");


-- Q58) Age NOT BETWEEN 28–35

select * from emp where Age Not Between 28 and 35;


-- Q59) Department IN IT, Finance AND age > 30

select * from emp where Department in ('IT' , "Finance") and Age > 30;



-- Q60) Age > 25 AND NOT Mumbai

select * from emp where Age > 25 and city != 'Mumbai';



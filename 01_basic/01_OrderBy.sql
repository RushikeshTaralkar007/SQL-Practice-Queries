use info;

Create Table Sales(
Order_Id INT,
Customer_Name Varchar(50),
Product Varchar(50),
Category Varchar(50),
Amount INT,
Quantity INT,
City Varchar(50),
Order_Date DATE 
);

INSERT INTO Sales VALUES
(1,'Amit','Laptop','Electronics',60000,1,'Mumbai','2024-01-10'),
(2,'Priya','Shoes','Fashion',2000,2,'Pune','2024-01-12'),
(3,'Rahul','Mobile','Electronics',30000,1,'Delhi','2024-01-15'),
(4,'Sneha','Watch','Accessories',5000,1,'Mumbai','2024-01-18'),
(5,'Rohan','T-Shirt','Fashion',800,3,'Bangalore','2024-01-20'),
(6,'Anita','Camera','Electronics',45000,1,'Pune','2024-01-22'),
(7,'Vikas','Tablet','Electronics',20000,1,'Delhi','2024-01-25'),
(8,'Karan','Bag','Accessories',1500,2,'Mumbai','2024-01-28'),
(9,'Neha','Jeans','Fashion',2500,1,'Bangalore','2024-02-01'),
(10,'Arjun','Speaker','Electronics',3500,2,'Pune','2024-02-03'),
(11,'Deepa','Sunglasses','Accessories',1200,2,'Mumbai','2024-02-05'),
(12,'Suresh','Keyboard','Electronics',1500,3,'Delhi','2024-02-08'),
(13,'Meena','Mouse','Electronics',700,4,'Pune','2024-02-10'),
(14,'Ravi','Jacket','Fashion',3000,1,'Bangalore','2024-02-12'),
(15,'Pooja','Charger','Electronics',500,5,'Mumbai','2024-02-15'),
(16,'Aakash','Smartwatch','Electronics',8000,1,'Delhi','2024-02-18'),
(17,'Divya','Cap','Fashion',400,6,'Pune','2024-02-20'),
(18,'Nikhil','Power Bank','Electronics',1800,2,'Mumbai','2024-02-22'),
(19,'Kavita','Perfume','Accessories',2200,1,'Bangalore','2024-02-25'),
(20,'Manish','Headphones','Electronics',2500,2,'Delhi','2024-02-28');



select * from Sales;


-- Q1) Sort all records by Amount (ascending)

select * from Sales Order By Amount ASC;

-- Q2) Sort by Amount (descending)

select * from Sales Order By Amount DESC;

-- Q3) Sort by Customer Name (A-Z)

select * from Sales Order By Customer_Name ASC;

-- Q4) Sort by Quantity

select * from Sales Order By Quantity;


-- Q5) Sort by City then Amount

select * from Sales Order By City, Amount;

-- Q6) Sort by City ASC and Amount DESC

select * from Sales Order By City ASC , Amount DESC;

-- Q7) Sort by Category and Quantity

select * from Sales order by Category , Quantity DESC;

-- Q8) Sort by Product and Amount

select * from Sales order By Product , Amount;

-- Q9) Sort by City and Customer Name

select * from Sales Order By City , Customer_Name;

-- Q10) Sort Electronics products by Amount

select * from Sales where Category = "Electronics" Order By Amount DESC;

-- Q11) Sort Mumbai orders by Quantity

select * from Sales Where City = "Mumbai" Order By Quantity desc;


-- Q12) Sort orders with Amount > 5000

select * from Sales where Amount > 5000 Order By Amount DESC;

-- Q13)  Sort Fashion category by Amount

select * from Sales Where CAtegory = "Fashion" Order By Amount ASC;

-- Q14)  Sort orders from Pune by Date

select * from Sales where City = "Pune" Order By Order_Date;


-- Q15)  Top 5 highest sales

select * from Sales order By Amount DESC limit 5 ;

-- Q16) Top 3 lowest sales

select * from Sales Order By Amount ASC Limit 3;

-- Q17)  Top 5 highest quantity orders

select * from Sales Order By Quantity DESC Limit 5;

-- Q18) Latest 5 orders

select * from Sales Order By Order_Date DESC limit 5;

-- Q19) Oldest 5 orders

select * from Sales Order By Order_Date ASC limit 5;

-- Q20) Sort by Order Date

select * from Sales Order By Order_Date;


-- Q21)  Orders between dates sorted

select * from Sales Where Order_Date between '2024-02-01' AND '2024-02-28' Order By Order_Date;

-- Q22) Sort January orders by Amount

select * from Sales Where Order_Date <'2024-02-01'Order By Amount DESC; 

















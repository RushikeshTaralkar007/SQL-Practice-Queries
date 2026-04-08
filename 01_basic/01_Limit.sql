use info;

Create Table Products (
Product_ID INT,
Product_Name Varchar(50),
Category Varchar(50),
Price INT,
Rating Float,
Stock INT,
City Varchar(50)
);

INSERT INTO Products VALUES
(1,'Laptop','Electronics',60000,4.5,10,'Mumbai'),
(2,'Mobile','Electronics',30000,4.3,25,'Pune'),
(3,'Shoes','Fashion',2000,4.1,50,'Delhi'),
(4,'Watch','Accessories',5000,4.4,30,'Mumbai'),
(5,'Headphones','Electronics',2500,4.2,40,'Bangalore'),
(6,'T-Shirt','Fashion',800,3.9,60,'Pune'),
(7,'Tablet','Electronics',20000,4.6,15,'Delhi'),
(8,'Bag','Accessories',1500,4.0,45,'Mumbai'),
(9,'Camera','Electronics',45000,4.7,8,'Bangalore'),
(10,'Jeans','Fashion',2500,4.2,35,'Pune'),
(11,'Speaker','Electronics',3500,4.3,20,'Delhi'),
(12,'Sunglasses','Accessories',1200,4.1,70,'Mumbai'),
(13,'Keyboard','Electronics',1500,4.2,55,'Bangalore'),
(14,'Mouse','Electronics',700,4.0,80,'Pune'),
(15,'Jacket','Fashion',3000,4.5,25,'Delhi'),
(16,'Charger','Electronics',500,3.8,90,'Mumbai'),
(17,'Smartwatch','Electronics',8000,4.6,18,'Bangalore'),
(18,'Cap','Fashion',400,3.7,100,'Pune'),
(19,'Power Bank','Electronics',1800,4.3,60,'Delhi'),
(20,'Perfume','Accessories',2200,4.4,22,'Mumbai');


select * from Products;


-- Q1) Show First 5 Products 

select * from Products Limit 5;

-- Q2) Show first 10 products 

select * from Products Limit 10;

-- Q3) show product names of first 5 rows 

select Product_Name From Products limit 5;

-- Q4) Show first Product 

select * from Products limit 1;

-- Q5) Show top 5 highest priced products 

select * from Products Order By Price Desc Limit 5;

-- Q6) show 3 chepest products 

select * from Products Order by Price ASC limit 3;

-- Q7) Show top 5 highest rated products

select * from Products Order By Rating Desc limit 5;

-- Q8) Show 4 lowest rated products

select * from Products Order By Rating ASC limit 4;

-- Q9) Show top 2 products with highest stock

select * from Products Order By Stock DESC limit 2;

-- Q10) Show top 3 electronics products

select * from Products where Category = "Electronics" limit 3;

-- Q11) Show 5 products from Mumbai

select * from Products where City = "Mumbai" limit 5;

-- Q12) Show top 2 expensive fashion products

select * from Products where Category = "Fashion" Order By Price DESC Limit 2;


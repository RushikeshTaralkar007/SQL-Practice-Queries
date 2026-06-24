create Database Food;

use Food;

create Table Foodsales(
Sales_ID INT PRIMARY KEY,
Product_Name VARCHAR(50),
Category VARCHAR(30),
City VARCHAR(30),
Sales_Date DATE,
Quantity INT,
Revenue DECIMAL(10,2)
);

INSERT INTO Foodsales VALUES
(1,'Pizza','Fast Food','Pune','2025-01-05',10,2500),
(2,'Burger','Fast Food','Mumbai','2025-01-06',15,2250),
(3,'Pizza','Fast Food','Pune','2025-01-10',12,3000),
(4,'Sandwich','Fast Food','Delhi','2025-01-12',8,1200),
(5,'Pasta','Fast Food','Mumbai','2025-01-15',20,5000),

(6,'Apple','Fruits','Pune','2025-01-18',25,3750),
(7,'Banana','Fruits','Delhi','2025-01-20',30,1800),
(8,'Mango','Fruits','Mumbai','2025-01-22',18,5400),
(9,'Apple','Fruits','Pune','2025-01-25',15,2250),
(10,'Orange','Fruits','Delhi','2025-01-28',22,3300),

(11,'Milk','Dairy','Mumbai','2025-02-01',40,2400),
(12,'Cheese','Dairy','Pune','2025-02-03',12,3600),
(13,'Butter','Dairy','Delhi','2025-02-05',18,2700),
(14,'Milk','Dairy','Mumbai','2025-02-08',35,2100),
(15,'Cheese','Dairy','Pune','2025-02-10',10,3000);

select * from Foodsales;




-- Windows Function 

-- General Syntax  :-- 

-- SELECT
--     column_name,
--     WINDOW_FUNCTION() OVER (
--         PARTITION BY column_name
--         ORDER BY column_name
--     )
-- FROM table_name;





-- Q1) Row Number() : Rank Product By Revenue 

 select * ,row_number() over(order by Revenue desc) As RowNum From Foodsales;
 
 
 -- Q2) RANK() : 
 
 select *, rank() over(order by Revenue desc) As Revenue_Rank From Foodsales;
 
 
 -- Q3) Dense_Rank : 
 
 select * , dense_rank() over(order by Revenue desc) As DenseRank From Foodsales;
 
 
 -- Q4) Category-wise Ranking
 
select * , row_number() over(partition by Category order by Revenue desc) As Category_Wise_Rank From Foodsales;
 
 
 -- Q5)  Running Total Revenue
 
 select Sales_Date, Revenue , sum(Revenue) over(order by Sales_Date) As Running_Revenue From Foodsales;
 
 
 -- Q6) Previous Revenue (LAG) 
 
 select Sales_Date , Revenue , LAG(Revenue) over(order by Sales_Date) As Previous_Revenue From Foodsales;
 
 
 -- Q7) Next Revenue (LEAD)
 
 select Sales_Date , Revenue , LEAD(Revenue) over(order by Revenue) As Next_Revenue From Foodsales;
 
 
 -- Q8) Category Average Revenue
 
  select Product_Name, Category , Revenue , Avg(Revenue) over(partition by Category) As Category_Average_Revenue From Foodsales;


 
 -- Q9) Top Selling Product in Each Category
 
 with RankedProducts As (
 
 select *, row_number() over(partition by Category order by Revenue desc) As rn From Foodsales
 
 )
 
 select * from RankedProducts where rn =1;
 
 
 
 -- Q10) Running Quantity 
 
 select Sales_Date , Quantity , Sum(Quantity) over(order by  Sales_Date) As Running_Qty From Foodsales;
 
 
 
 
 
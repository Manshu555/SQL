use aditi;

CREATE TABLE sales (
    SaleID INT,
    ProductName VARCHAR(50),
    Category VARCHAR(50),
    Quantity INT,
    Price DECIMAL(10, 2),
    SaleDate DATE
);

INSERT INTO sales (SaleID, ProductName, Category, Quantity, Price, SaleDate) VALUES
(1, 'Laptop', 'Electronics', 2, 75000, '2024-08-01'),
(2, 'Smartphone', 'Electronics', 5, 20000, '2024-08-02'),
(3, 'Refrigerator', 'Appliances', 1, 45000, '2024-08-03'),
(4, 'Microwave', 'Appliances', 2, 12000, '2024-08-04'),
(5, 'Washing Machine', 'Appliances', 1, 30000, '2024-08-05'),
(6, 'Headphones', 'Electronics', 10, 1500, '2024-08-06'),
(7, 'Television', 'Electronics', 4, 55000, '2024-08-07'),
(8, 'Air Conditioner', 'Appliances', 1, 40000, '2024-08-08'),
(9, 'Blender', 'Appliances', 5, 8500, '2024-08-09'),
(10, 'Tablet', 'Electronics', 3, 15000, '2024-08-10');

-- 1
select category,sum(price*quantity) as total_sales
from sales 
group by Category;

-- 2
select avg(price) as avg_price
from sales
group by category;

-- 3
select productname,sum(quantity) as Total_Quantity
from sales
group by productname
having sum(quantity)>3;

-- 4
SELECT Category, AVG(price) AS avg_price
FROM sales
GROUP BY Category
HAVING AVG(price) between 20000 and 50000;

-- 5
select saleDate,sum(price * Quantity) as Total_Revenue
from sales
group by saledate;

-- 6
alter table sales
add column DISCOUNT decimal(10,2);

update sales
set discount = 0.10
where Category = 'Electronics';

-- 7
select productname , sum(Quantity*Price) as total_sales
from sales
where saledate > '2024-08-05'
group by productname;

-- 8
select sum(Quantity) as total_Quantity , avg(price) as Avg_Price
from sales
where productname like "T%"
group by productname;



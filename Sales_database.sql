create database salesdatabase;
use salesdatabase;

#SALES_TABLE
CREATE TABLE Sales (
Sale_id INT NOT NULL,
Product_id INT NOT NULL,
quantity_sold INT NOT NULL,
sales_date DATE NOT NULL,
total_price DECIMAL(10, 2) NOT NULL,
PRIMARY KEY (Sale_id));

insert into Sales (Sales_id, Product_id, Quantity_sold, Sale_Date, Total_price)
values
(1, 101, 5, '2024-01-01', 2500.00),
(2, 102, 3, '2024-01-02', 900.00),
(3, 103, 2, '2024-01-02', 60.00),
(4, 104, 4, '2024-01-03', 80.00),
(5, 105, 6, '2024-01-03', 90.00);

#PRODUCT_TABLE
CREATE TABLE Products (
Product_id INT NOT NULL,
Product_name VARCHAR(50),
Category VARCHAR(50),
unit_price DECIMAL(10, 2),
PRIMARY KEY (Product_id),
FOREIGN KEY (Product_id) references Sales(Product_id)
);

INSERT INTO Products (Product_id, Product_name, Category, unit_price) VALUES
(101, 'laptop', 'Electronics', 500.00),
(102, 'Smartphone', 'Electronics', 300.00),
(103, 'headphones', 'Electronics', 30.00),
(104, 'keyboard', 'Electronics', 20.00),
(105, 'mouse', 'Electronics', 15.00);

**Queries**
# 1. Retrieve all Attributes from the sales table
select * 
from Sales;

# 2. Retrieve the Product_name and Unit_price from the Product table
select Product_name, Unit_Price 
from Product;

# 3. Retrive the sale_id and sale_date form the sales table
select Sales_id, Sale_Date 
from Sales;

# 4. Filter the sales table to show only sales with a total price greater than 100.
select * 
from Sales
where total_price > 100;

# 5. Filter the Product table to show only Product in the Electronic category.
select * 
from Product
where Categroy = 'Electronics';

# 6. Retrieve the sale_id and total_price from the sales table for sales made of jan-03-2024
select Sales_id, Total_price
from Sales
where Sale_Date = '2024-01-03';

# 7. Retrieve the Product_id and Product_name form the Product table for product with the price greater the 100.
select Product_id, Product_name
from Product
where Unit_Price > 100;

# 8. Calculate total revenue generate in sales in sales table
select sum(Total_price) 
from Sales;

# 9. Calculate the average Unit Price of Product in the Product table
select avg(Unit_Price)
from Product;

# 10. Calculate the total Quantity sold form the Sales Table
select sum(Quantity_sold)
from Sales;

# 11. Calculate Sales per day from the sales table.
select sum(Total_price) as Sales_per_day
from Sales
group by Sale_Date;

# 12. Retrieve Product_name and Unit_Price from the Product Table with the highest unit price
select Product_name, Unit_Price
from Product
where Unit_Price = (select max(Unit_Price) from Product);

# 13. Retrieve the sale_id, Product_id, and Total_price from the Sales table for sales with a Quantity_sold greater than 4.
select Sales_id, Product_id, Total_price 
from Sales
where Quantity_sold > 4;

# 14. Retrieve the Prodcut_name and Unit_Price form the Prodcut talbe, ordering the results by Unit_price in descending order.
select Product_name, Unit_Price 
from Product
order by Unit_Price desc;

# 15. Retrieve the total price of all sales, rounding the values to two decimal places.
select round(sum(Total_price), 2)
from Sales;

# 16. Calculate the average total_price of sales in the Sales table.
select avg(Total_price) as Average_totalPrice 
from Sales;

# 17. Retrieve the sale_id and Sale_date form the Sales table, fromatting the Sale_date as 'YYYY-MM-DD'.
select Sales_id, Sale_Date, date_format(Sale_Date, "%Y-%M-%D") 
from Sales;

# 18. Calculate the total revenue generated from slaes of Product table in the 'Electronics' Category.
select Categroy, sum(Total_price)
from Sales, Product
where Sales.Product_id = Product.Product_id and Categroy = 'Electronics';

# 19. Retrieve the Product name and Unit price from the products table, filtering the unit price to show only values between $20 and $600.
select Product_name, Unit_Price 
from Product
where Unit_Price > 30 and Unit_price < 600;

# 20. Retrive the product name and categroy from the Products table, ordering the results by categroy in ascending order.
select Product_name, Categroy 
from Product
order by Categroy asc;

--Write an SQL query to find the top 5 customers with the highest total order amounts.

-- Create the database
create database CustomerDB

-- Create the table
CREATE TABLE customer_orders (
    customer_id VARCHAR(20) PRIMARY KEY,
    customer_name CHAR(50),
    region CHAR(50),
    order_amount INT
);

-- Insert random values
INSERT INTO customer_orders (customer_id,customer_name, region, order_amount)
VALUES
    (101,'John Smith', 'North', 150),
    (102,'Jane Doe', 'South', 200),
    (103,'Michael Johnson', 'West', 75),
    (104,'Emily Brown', 'East', 300),
    (105,'David Williams', 'North', 120),
    (106,'Sarah Lee', 'South', 50),
    (107,'Chris Martinez', 'West', 180),
    (108,'Jessica Anderson', 'East', 250),
    (109,'Daniel Taylor', 'North', 90),
    (110,'Maria Garcia', 'South', 400);

-- Check the inserted data

select * from customer_orders

--Top 5 customers with the highest total order amounts.

SELECT TOP 5
    customer_id,
    customer_name,
    region,
    SUM(order_amount) AS total_order_amount
FROM 
    [dbo].[customer_orders]
GROUP BY 
    customer_id,
    customer_name,
    region
ORDER BY 
    total_order_amount DESC










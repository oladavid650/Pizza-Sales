--KPI’s REQUIREMENT 
--Use PizzaDB;


--Changing order_date and  order_time datatype 

ALTER TABLE Pizza_Sales
ALTER COLUMN order_date DATE 


ALTER TABLE Pizza_Sales
ALTER COLUMN order_time TIME(0)


---Showing the table
SELECT * 
FROM Pizza_Sales



--Now Analysing the Data

--Total Revenue

SELECT SUM(total_price) AS 'Total Reveune'
FROM Pizza_Sales



--Average Order Value

SELECT SUM(total_price)/COUNT(DISTINCT order_id) AS ' Average Order Value'
FROM Pizza_Sales


--Total Pizza Sold 

SELECT SUM(quantity) AS ' Total Pizza Sold'
FROM Pizza_Sales



--Total Orders

SELECT COUNT(DISTINCT order_id) AS 'Total Orders'
FROM Pizza_Sales


--Average Pizza Per Order 
SELECT CAST (SUM(quantity)/ COUNT( DISTINCT order_id) AS DECIMAL (10,2)) AS 'Average Pizza Per Order'
FROM Pizza_Sales 







--CHART REQUIREMENT 

--Daily Trends for Total Order

SELECT DATENAME(WEEKDAY, order_date) AS 'Order Day' , COUNT(DISTINCT order_id) AS 'Total Order'
FROM Pizza_Sales
GROUP BY  DATENAME(WEEKDAY, order_date) 
ORDER BY DATENAME(WEEKDAY, order_date)  



--Hourly Trend for Total Orders

SELECT DATEPART(HOUR, order_time) AS 'Order Hours' , COUNT(DISTINCT order_id) AS 'Total Order'
FROM Pizza_Sales
GROUP BY  DATEPART(HOUR, order_time)
ORDER BY DATEPART(HOUR, order_time)



--Percentage of Sales by Pizzas Size

SELECT pizza_size,CAST( SUM(total_price) AS DECIMAL (10,2)) AS 'Total Price', CAST ( SUM (total_price)*100 / (SELECT SUM (total_price) FROM Pizza_Sales ) AS DECIMAL (10,2)) AS 'Percentage Total Sales'
FROM Pizza_Sales
GROUP BY pizza_size
ORDER BY 'Percentage Total Sales'



--Percentage of Sales by Pizzas Size (First Quarter: January)
SELECT pizza_size,CAST( SUM(total_price) AS DECIMAL (10,2)) AS 'Total Price', CAST ( SUM (total_price)*100 / (SELECT SUM (total_price) FROM Pizza_Sales 
WHERE DATEPART (QUARTER, order_date) = 1 ) AS DECIMAL (10,2)) AS 'Percentage Total Sales'
FROM Pizza_Sales
WHERE DATEPART (QUARTER, order_date) = 1
GROUP BY pizza_size
ORDER BY 'Percentage Total Sales'





--Total Pizzas Sold by Pizzas Category

SELECT pizza_category, SUM (quantity) AS 'Total Pizzas Sold'
FROM Pizza_Sales
GROUP BY pizza_category



--Top 5 Best Sellers by Total Pizzas Sold

SELECT TOP 5 pizza_name,  SUM(quantity)  AS 'Total Pizzas Sold'
FROM Pizza_Sales
GROUP BY pizza_name
ORDER BY 'Total Pizzas Sold' DESC 



--Bottom 5 worst Sellers by Total Pizzas Sold

SELECT TOP 5 pizza_name,  SUM(quantity)  AS 'Total Pizzas Sold'
FROM Pizza_Sales
GROUP BY pizza_name
ORDER BY 'Total Pizzas Sold' 

-- SELECT * FROM superstore_db.superstore;
-- SELECT COUNT(*) order_id FROM superstore_db.superstore;
/*
CREATE VIEW Total_customers AS
SELECT COUNT(DISTINCT customer_name) AS Total_customers
 FROM superstore_db.superstore;
 */
 
-- select * from Total_customers;
/*
CREATE VIEW ship_mode AS
SELECT ship_mode , COUNT(*) AS ship_mode_count
 FROM  superstore_db.superstore
 GROUP BY ship_mode;
 */ -- SELECT * FROM ship_mode;
 /*
  CREATE VIEW segment_type AS
 SELECT segment, COUNT(*) AS segment_count
 FROM superstore_db.superstore
 GROUP BY segment;
 */ -- SELECT * FROM segment_type;
 

/*
SELECT region,
SUM(CASE WHEN category = 'Furniture' THEN sales ELSE 0 END) AS 'Furniture',
SUM(CASE WHEN category = 'Office Supplies' THEN sales ELSE 0 END) AS 'Office Supplies',
SUM(CASE WHEN category = 'Technology' THEN sales ELSE 0 END) AS 'Technology',
SUM(sales) AS Grand_total
FROM superstore_db.superstore
GROUP BY region
ORDER BY region;
*/
/*
CREATE VIEW sales_by_region AS
SELECT region,
       TRUNCATE(SUM(CASE WHEN category = 'Furniture' THEN sales ELSE 0 END), 0) AS Furniture,
       TRUNCATE(SUM(CASE WHEN category = 'Office Supplies' THEN sales ELSE 0 END), 0) AS Office_Supplies,
       TRUNCATE(SUM(CASE WHEN category = 'Technology' THEN sales ELSE 0 END), 0) AS Technology,
       TRUNCATE(SUM(sales), 0) AS Grand_Total
FROM superstore_db.superstore
GROUP BY region
ORDER BY region;
*/-- SELECT * FROM sales_by_region;
/*
CREATE VIEW total_sales AS
SELECT TRUNCATE(SUM(sales),0) as total_sales FROM superstore_db.superstore;
*/ -- SELECT * FROM total_sales;
/*
CREATE VIEW avgsales_per_month AS
SELECT DATE_FORMAT(order_date, '%Y-%m') as Month,
TRUNCATE(SUM(sales) / COUNT(DISTINCT order_id),0) AS average_order_value
FROM superstore_db.superstore
GROUP BY DATE_FORMAT(order_date, '%Y-%m')
ORDER BY Month;
*/ -- SELECT * FROM avgsales_per_month;
/*
CREATE VIEW avgsales_per_year AS
SELECT YEAR(order_date) AS year,
TRUNCATE(SUM(sales) / COUNT(DISTINCT order_id),0) AS avg_sales_year
FROM superstore_db.superstore
GROUP BY YEAR(order_date) 
ORDER BY Year;
*/ -- SELECT* FROM avgsales_per_year;
/*
CREATE VIEW sales_by_month AS
SELECT
    YEAR(order_date) AS Year,
    ROUND(SUM(Sales), 2) AS Total_Sales
FROM superstore_db.superstore
GROUP BY YEAR(order_date)
ORDER BY Year;
*/ -- SELECT * FROM sales_by_month;
/*
/*
CREATE VIEW sales_by_year AS
SELECT 
    MONTH(order_date) AS Month,
    ROUND(SUM(Sales), 2) AS Total_Sales
FROM superstore_db.superstore
GROUP BY MONTH(order_date)
ORDER BY Month;
*/-- SELECT * FROM sales_by_year;




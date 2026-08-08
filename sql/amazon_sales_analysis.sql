-- ============================================
-- AMAZON SALES DATA ANALYSIS
-- PostgreSQL
-- ============================================


-- 1. Total number of sales records

SELECT 
    COUNT(*) AS total_sales_records
FROM amazon_orders;


-- 2. Total revenue

SELECT 
    ROUND(SUM(amount), 2) AS total_revenue
FROM amazon_orders;


-- 3. Product category with highest quantity sold

SELECT 
    category,
    SUM(qty) AS total_quantity_sold
FROM amazon_orders
GROUP BY category
ORDER BY total_quantity_sold DESC
LIMIT 1;


-- 4. Average sales amount per transaction

SELECT 
    ROUND(AVG(amount), 2) AS avg_sales_amount
FROM amazon_orders;


-- 5. Number of unique SKUs

SELECT 
    COUNT(DISTINCT sku) AS unique_skus
FROM amazon_orders;


-- 6. Top 5 SKUs by quantity sold

SELECT 
    sku,
    SUM(qty) AS total_quantity
FROM amazon_orders
GROUP BY sku
ORDER BY total_quantity DESC
LIMIT 5;


-- 7. Month with highest revenue

SELECT 
    TO_CHAR(order_date, 'MM-YYYY') AS month,
    ROUND(SUM(amount), 2) AS revenue
FROM amazon_orders
GROUP BY month
ORDER BY revenue DESC
LIMIT 1;


-- 8. B2B vs Non-B2B sales

SELECT 
    CASE
        WHEN b2b THEN 'B2B'
        ELSE 'Non-B2B'
    END AS sales_type,
    COUNT(*) AS total_sales
FROM amazon_orders
GROUP BY sales_type;


-- 9. Most frequently used fulfilment method

SELECT 
    fulfilled_by AS fulfilment,
    COUNT(*) AS total_sales
FROM amazon_orders
GROUP BY fulfilled_by
ORDER BY total_sales DESC
LIMIT 1;


-- 10. Sales by product size

SELECT 
    size,
    COUNT(*) AS total_sales
FROM amazon_orders
GROUP BY size
ORDER BY total_sales DESC;

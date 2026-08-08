# Amazon Sales Analysis using PostgreSQL

## 📌 Project Overview

This project analyzes Amazon sales data using PostgreSQL and SQL
to identify sales trends, product performance, revenue patterns,
SKU performance, B2B sales, and fulfilment methods.

## 🛠️ Tools Used

- PostgreSQL
- SQL
- pgAdmin
- DBeaver
- GitHub

## 🔍 Business Questions

1. How many total sales records are in the dataset?
2. What is the total revenue generated?
3. Which product category had the highest total quantity sold?
4. What is the average sales amount per transaction?
5. How many unique SKUs were sold?
6. What are the top 5 most sold SKUs based on quantity?
7. Which month had the highest total sales revenue?
8. How many sales were B2B vs non-B2B?
9. Which fulfilment method was used most frequently?
10. How many sales were made for each product size?

## 📊 Key Results

| Metric | Result |
|---|---:|
| Total Sales Records | 128,975 |
| Total Revenue | 78,592,678.30 |
| Average Transaction Amount | 648.56 |
| Unique SKUs | 7,195 |
| Highest Quantity Category | SET |

## 💡 Key Insights

- The dataset contains 128,975 sales records.
- Total revenue generated was 78.59M.
- SET was the highest quantity-selling category.
- There were 7,195 unique SKUs.
- The average transaction amount was 648.56.
- Monthly revenue analysis was performed to identify the highest-performing month.
- B2B and Non-B2B transactions were compared.
- Fulfilment methods were analyzed based on order frequency.
- Product sizes were analyzed based on number of sales.

## 🧠 Skills Demonstrated

- PostgreSQL
- SQL
- Data Analysis
- Data Aggregation
- SELECT statements
- WHERE filtering
- GROUP BY
- ORDER BY
- LIMIT
- COUNT()
- SUM()
- AVG()
- COUNT(DISTINCT)
- ROUND()
- CASE statements
- Date formatting using TO_CHAR()
- Business Question Analysis
- Data Interpretation

## 📂 Project Structure

```text
amazon-sales-analysis-postgresql/
│
├── README.md
│
├── data/
│   └── README.md
│
├── sql/
│   ├── 01_create_schema_table.sql
│   ├── 02_data_import.sql
│   └── 03_sales_analysis.sql
│
├── screenshots/
│   ├── database_table.png
│   ├── sql_queries.png
│   ├── sales_results.png
│   └── monthly_revenue.png
│
└── insights/
    └── business_insights.md

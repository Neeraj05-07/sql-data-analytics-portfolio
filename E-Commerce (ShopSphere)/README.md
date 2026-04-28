# ShopSphere — E-Commerce SQL Project

A complete SQL project built on a fictional e-commerce company **ShopSphere**,
demonstrating real-world database design, data insertion, and business analysis
using MySQL.

---

## 📁 Database
```
Database Name : shopsphere_db
Tool Used     : MySQL Workbench
SQL Version   : MySQL 8.0
```

---

## 🗂️ Tables

| Table | Description |
|-------|-------------|
| `customers` | Stores customer personal details |
| `products` | Product catalog with pricing |
| `orders` | Customer order records with status |
| `order_items` | Line items inside each order |
| `returns` | Returned product records with reason |

---

## Analysis Queries

| # | Query | Business Purpose |
|---|-------|-----------------|
| 1 | Monthly Revenue Trend | Track sales growth over time |
| 2 | Revenue by Category | Best performing product categories |
| 3 | Top 5 Products | Highest revenue-generating products |
| 4 | Customer Purchase Summary | Per-customer spend and order history |
| 5 | RFM Segmentation | Classify customers by loyalty |
| 6 | Order Fulfillment Funnel | Delivered vs cancelled orders |
| 7 | Product Return Rate | Flag high-return products |
| 8 | Revenue by City | Regional sales performance |
| 9 | YoY Revenue Growth | Year-over-year comparison |
| 10 | Customer Lifetime Value | Annualised revenue per customer |

---

## How to Run

Step 1 → Open MySQL Workbench
Step 2 → Run 01_shopsphere_schema.sql       (creates tables)
Step 3 → Run 02_shopsphere_seed_data.sql    (inserts data)
Step 4 → Run 03_analysis_queries.sql        (business insights)
---

##  Key Concepts Used

`JOINS`, `GROUP BY`, `AGGREGATE FUNCTIONS`,
`FOREIGN KEYS`, `DATE FUNCTIONS`,
`CASE WHEN`, `SUBQUERIES`, `NULLIF`

---

##  Key Findings

-  Revenue peaked in **December 2023** (festive season)
-  **Electronics** is the highest revenue category
-  **Wireless Headphones** has the highest return rate
-  **Aarav Shah** is the top customer by lifetime value
-  **Mumbai** leads all cities in total revenue

---

## Author

**Neeraj Thakur**
tneeraj80@gmail.com
[LinkedIn](https://www.linkedin.com/in/neeraj-thakur-ba7838230/) 
---


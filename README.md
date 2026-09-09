# Olist E-Commerce Sales & Customer Analytics

## Project Overview

This project analyses the Brazilian Olist e-commerce dataset using Python, Pandas and SQL.

The objective was to explore sales performance, customer behaviour, delivery performance, payment preferences and seller activity while demonstrating practical data analytics skills.

The analysis covers more than 99,000 customer orders and combines multiple relational datasets including orders, customers, products, payments, reviews and sellers.

## Tools & Skills

- Python
- Pandas
- SQL
- SQLite
- Matplotlib
- Data Cleaning
- Exploratory Data Analysis (EDA)
- Data Visualisation
- Data Aggregation
- Multi-table Joins
- Business Analysis
- Data Storytelling

## Business Questions

The project investigates the following questions:

1. How did revenue change over time?
2. Which product categories generated the most revenue?
3. Which customer states generated the most revenue?
4. Do late deliveries affect customer review scores?
5. How many customers made repeat purchases?
6. Which payment methods were used most frequently?
7. Which sellers generated the most revenue?

## Key Findings

### Revenue Performance
The dataset contained approximately **R$13.59 million in item revenue** across **99,441 orders** and **96,096 unique customers**.

Revenue increased strongly throughout 2017 and remained relatively high during much of 2018. **November 2017** was the highest-revenue month, generating approximately **R$1.01 million**.

September and October 2018 contained incomplete data and were therefore not interpreted as a genuine decline in business performance.

### Product Performance
**Health and Beauty** was the highest-revenue product category at approximately **R$1.26 million**, followed by **Watches and Gifts** at approximately **R$1.21 million**.

### Geographic Performance
**São Paulo (SP)** generated approximately **R$5.20 million** in revenue, substantially more than any other state.

Rio de Janeiro and Minas Gerais followed with approximately **R$1.82 million** and **R$1.59 million** respectively.

### Delivery Performance and Customer Satisfaction
Late deliveries received an average customer review score of approximately **2.27 out of 5**.

Orders delivered on time or early received an average score of approximately **4.29 out of 5**.

This suggests that delivery reliability has a strong relationship with customer satisfaction.

### Customer Retention
Only **3.12% of customers made repeat purchases**, representing 2,997 repeat customers out of 96,096 unique customers.

This indicates an opportunity to improve customer retention and post-purchase engagement.

### Payment Behaviour
Credit cards were the most widely used payment method, appearing in **76,505 orders**, followed by boleto with **19,784 orders**.

### Seller Performance
The highest-performing seller generated approximately **R$229,473** in item revenue.

Nine of the ten highest-revenue sellers were located in **São Paulo state**, indicating a strong geographic concentration of high-performing sellers.

## SQL Analysis

SQL was used alongside Python to validate and reproduce key parts of the analysis.

The project demonstrates:

- `SELECT`
- `COUNT`
- `SUM`
- `GROUP BY`
- `ORDER BY`
- `LIMIT`
- Two-table JOINs
- Three-table JOINs
- Aggregation across relational datasets

Examples include analysing order status, revenue by state and product-category revenue using multiple joined tables.

## Business Recommendations

Based on the findings:

- Improve delivery reliability, as late deliveries are associated with substantially lower customer review scores.
- Investigate customer-retention strategies such as loyalty programmes, personalised offers and post-purchase engagement.
- Prioritise strong-performing product categories such as Health and Beauty and Watches and Gifts.
- Maintain strong operational coverage in São Paulo while exploring growth opportunities in other regions.
- Monitor high-performing sellers and identify practices that could be replicated across the seller network.

## Dataset

The project uses the **Brazilian E-Commerce Public Dataset by Olist**, containing approximately 100,000 anonymised e-commerce orders across several relational datasets.

Raw data files are excluded from this repository.

## Project Notebook

The complete Python and SQL analysis can be viewed here:

`notebooks/olist_ecommerce_analysis.ipynb`

## Repository Structure

```text
olist-ecommerce-analytics/
│
├── data/
│   └── README.md
├── notebooks/
│   └── olist_ecommerce_analysis.ipynb
├── scripts/
├── sql/
├── .gitignore
├── README.md
└── requirements.txt

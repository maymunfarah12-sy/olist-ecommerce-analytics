-- Olist E-Commerce Analytics
-- Day 2 starter SQL queries
-- These queries assume the CSV files have been loaded into SQLite
-- using scripts/build_sqlite_db.py.

-- 1. Preview orders
SELECT *
FROM olist_orders_dataset
LIMIT 10;

-- 2. Orders by status
SELECT
    order_status,
    COUNT(*) AS order_count
FROM olist_orders_dataset
GROUP BY order_status
ORDER BY order_count DESC;

-- 3. Revenue by product category
SELECT
    COALESCE(t.product_category_name_english, p.product_category_name) AS category,
    ROUND(SUM(i.price), 2) AS revenue,
    COUNT(DISTINCT i.order_id) AS orders
FROM olist_order_items_dataset AS i
LEFT JOIN olist_products_dataset AS p
    ON i.product_id = p.product_id
LEFT JOIN product_category_name_translation AS t
    ON p.product_category_name = t.product_category_name
GROUP BY category
ORDER BY revenue DESC;

-- 4. Revenue by customer state
SELECT
    c.customer_state,
    ROUND(SUM(i.price), 2) AS revenue,
    COUNT(DISTINCT o.order_id) AS orders
FROM olist_orders_dataset AS o
JOIN olist_customers_dataset AS c
    ON o.customer_id = c.customer_id
JOIN olist_order_items_dataset AS i
    ON o.order_id = i.order_id
GROUP BY c.customer_state
ORDER BY revenue DESC;

-- 5. Repeat customers
SELECT
    c.customer_unique_id,
    COUNT(DISTINCT o.order_id) AS orders
FROM olist_customers_dataset AS c
JOIN olist_orders_dataset AS o
    ON c.customer_id = o.customer_id
GROUP BY c.customer_unique_id
HAVING COUNT(DISTINCT o.order_id) > 1
ORDER BY orders DESC;

-- TODO Day 2:
-- Write your own queries for:
-- a) monthly revenue
-- b) average review score by category
-- c) delivery delays by state
-- d) top sellers by revenue

-- Olist E-Commerce Sales & Customer Analytics
-- SQL analysis used to explore orders, customers, products and sellers.

-- 1. Preview orders
SELECT *
FROM orders
LIMIT 10;


-- 2. Count orders by status
SELECT
    order_status,
    COUNT(*) AS order_count
FROM orders
GROUP BY order_status
ORDER BY order_count DESC;


-- 3. Revenue by customer state
SELECT
    c.customer_state,
    ROUND(SUM(i.price), 2) AS revenue
FROM orders o
JOIN customers c
    ON o.customer_id = c.customer_id
JOIN order_items i
    ON o.order_id = i.order_id
GROUP BY c.customer_state
ORDER BY revenue DESC
LIMIT 10;


-- 4. Top product categories by revenue
SELECT
    t.product_category_name_english AS product_category,
    ROUND(SUM(i.price), 2) AS revenue
FROM order_items i
JOIN products p
    ON i.product_id = p.product_id
JOIN product_category_translation t
    ON p.product_category_name = t.product_category_name
GROUP BY t.product_category_name_english
ORDER BY revenue DESC
LIMIT 10;


-- 5. Top sellers by revenue
SELECT
    i.seller_id,
    s.seller_city,
    s.seller_state,
    ROUND(SUM(i.price), 2) AS revenue
FROM order_items i
JOIN sellers s
    ON i.seller_id = s.seller_id
GROUP BY
    i.seller_id,
    s.seller_city,
    s.seller_state
ORDER BY revenue DESC
LIMIT 10;


-- 6. Repeat customers
SELECT
    c.customer_unique_id,
    COUNT(DISTINCT o.order_id) AS order_count
FROM customers c
JOIN orders o
    ON c.customer_id = o.customer_id
GROUP BY c.customer_unique_id
HAVING COUNT(DISTINCT o.order_id) > 1
ORDER BY order_count DESC;

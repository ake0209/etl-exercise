----4.5 SQL Server Validation and Reporting Queries

--1. Query total sales per product category from the fact table, including historization information
SELECT product_category_name, SUM(total_price) AS total_sales
FROM dbo.fact_order_items
GROUP BY product_category_name;

--2. Query the average delivery time per seller from the fact table.
SELECT seller_id, AVG(delivery_time) AS avg_delivery_time_in_days
FROM dbo.fact_order_items
GROUP BY seller_id;

--3. Query the number of orders from each state from the customer dimension.
SELECT customer_state, COUNT(order_id) AS number_of_orders
FROM dbo.dim_customers  
JOIN fact_order_items ON dim_customers.customer_id = fact_order_items.customer_id
GROUP BY customer_state;


---historical backup of customers_data
select top 5 * from dbo.dim_customers2;

---checking records where certain columns have changed
SELECT 
    dim_customers.customer_id,
    CASE 
        WHEN dim_customers.customer_city != dim_customers2.customer_city THEN 'customer_city' 
        WHEN dim_customers.customer_state != dim_customers2.customer_state THEN 'customer_state'
    END AS changed_column,
    dim_customers2.customer_city AS old_value,
    dim_customers.customer_city AS new_value
FROM 
    dbo.dim_customers 
JOIN 
    dbo.dim_customers2
ON 
    dim_customers.customer_id = dim_customers2.customer_id
WHERE 
    dim_customers.customer_city != dim_customers2.customer_city
    OR dim_customers.customer_state != dim_customers2.customer_state;



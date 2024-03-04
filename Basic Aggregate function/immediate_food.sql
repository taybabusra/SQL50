SELECT ROUND((SUM(CASE WHEN d.customer_pref_delivery_date = d.order_date THEN 1 ELSE 0 END) / COUNT(DISTINCT d.customer_id)) * 100, 2) AS immediate_percentage
FROM Delivery d
JOIN (
    SELECT customer_id, MIN(order_date) AS first_order_date
    FROM Delivery
    GROUP BY customer_id
) AS first_orders ON d.customer_id = first_orders.customer_id
WHERE d.order_date = first_orders.first_order_date;

USE olistecommercedb;

CREATE VIEW adlsGold.vw_customer_segments AS
    SELECT
        customer_id,
        total_orders,
        total_revenue,
        CASE
            WHEN total_orders = 1 THEN 'One-time'
            WHEN total_orders BETWEEN 2 AND 5 THEN 'Repeat (2-5 orders)'
            WHEN total_orders > 5 THEN 'Loyal (6+ orders)'
            ELSE 'Unknown'
        END AS customer_segment
    FROM adlsGold.dim_customer;

USE olistecommercedb;

CREATE VIEW adlsGold.vw_delivery_performance_by_state AS
    SELECT 
        c.customer_state,
        COUNT(f.order_id) AS total_deliveries,
        SUM(CASE WHEN f.delay_flag = 1 THEN 1 ELSE 0 END) AS late_deliveries,
        SUM(CASE WHEN f.delay_flag = 1 THEN 1 ELSE 0 END) * 100 / COUNT(f.order_id) AS late_percentage
    FROM adlsGold.fact_delivery f
    JOIN adlsGold.dim_customer c
        ON f.customer_id = c.customer_id
    GROUP BY c.customer_state;
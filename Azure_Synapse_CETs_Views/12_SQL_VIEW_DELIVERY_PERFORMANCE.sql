USE olistecommercedb;

CREATE VIEW adlsGold.vw_delivery_performance AS
    SELECT
        seller_id,
        COUNT(order_id) AS total_deliveries,
        AVG(delivery_delay_days) AS avg_delays,
        ROUND((SUM(CASE WHEN delay_flag = 1 THEN 1 ELSE 0 END) * 100 / COUNT(order_id)), 2) AS late_percentage
    FROM adlsGold.fact_delivery
    GROUP BY seller_id;
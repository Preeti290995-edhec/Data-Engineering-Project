USE olistecommercedb;

CREATE VIEW adlsGold.vw_revenue_by_state AS
    SELECT
        c.customer_state,
        ROUND(SUM(f.payment_value),2) AS total_revenue,
        COUNT(DISTINCT f.order_id) AS total_orders
    FROM adlsGold.fact_orders f
    JOIN adlsGold.dim_customer c
        ON f.customer_id = c.customer_id
    GROUP BY c.customer_state;
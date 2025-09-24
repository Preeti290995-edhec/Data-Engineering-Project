USE olistecommercedb;

CREATE VIEW adlsGold.vw_revenue_by_seller AS
    SELECT 
        s.seller_id,
        s.seller_city,
        s.seller_state,
        ROUND(SUM(f.payment_value), 2) AS total_revenue,
        COUNT(DISTINCT f.order_id) AS total_orders
    FROM adlsGold.fact_orders f
    JOIN adlsGold.dim_seller s
        ON f.seller_id = s.seller_id
    GROUP BY s.seller_id, s.seller_city, s.seller_state;
USE olistecommercedb;

CREATE VIEW adlsGold.vw_sales_kpi AS
    SELECT 
        order_purchase_date AS sales_date,
        total_orders, 
        total_revenue,
        total_price AS total_unit_price,
        ROUND((total_revenue - total_price),2) AS total_profit,
        avg_order_value,
        avg_review_score
    FROM adlsGold.fact_daily_sales;
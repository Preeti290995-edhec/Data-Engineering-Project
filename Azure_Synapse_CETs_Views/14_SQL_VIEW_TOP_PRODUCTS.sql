USE olistecommercedb;

CREATE VIEW adlsGold.vw_top_product AS
    SELECT
        p.product_category_name_english,
        ROUND(SUM(f.price), 2) AS total_sales,
        COUNT(DISTINCT f.order_id) AS total_orders
    FROM adlsGold.fact_orders f
    JOIN adlsGold.dim_product p
        ON f.product_id = p.product_id
    GROUP BY p.product_category_name_english;
USE olistecommercedb;

CREATE VIEW adlsGold.vw_product_sales_rank AS
    SELECT
        p.product_category_name_english,
        ROUND(SUM(f.price), 2) AS total_sales,
        COUNT(DISTINCT f.order_id) AS total_orders,
        ROW_NUMBER() OVER (ORDER BY SUM(f.price) DESC) AS row_num,
        RANK() OVER (ORDER BY SUM(f.price) DESC) AS sales_rank,
        DENSE_RANK() OVER (ORDER BY SUM(f.price) DESC) AS sales_dense_rank
    FROM adlsGold.fact_orders f
    JOIN adlsGold.dim_product p
        ON f.product_id = p.product_id
    GROUP BY p.product_category_name_english;


SELECT TOP 10 * FROM adlsGold.vw_product_sales_rank ORDER BY total_sales DESC;
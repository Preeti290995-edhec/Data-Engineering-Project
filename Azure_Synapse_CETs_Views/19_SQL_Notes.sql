USE olistecommercedb;

SELECT * FROM sys.database_credentials;

SELECT TOP 1 *
FROM OPENROWSET (
    BULK 'https://storageaccountolistecom.dfs.core.windows.net/container-olist-ecommerce-data/Gold/fact_orders/',
    FORMAT = 'PARQUET'
) AS result1;

DROP EXTERNAL TABLE adlsGold.fact_orders;

DROP EXTERNAL DATA SOURCE GoldLayer;

DROP EXTERNAL FILE FORMAT ExtFileFormat;

DROP VIEW adlsGold.vw_sales_kpi;

DROP VIEW adlsGold.vw_delivery_performance;

DROP VIEW dbo.vw_revenue_by_state;

DROP VIEW adlsGold.vw_delivery_performance_by_state;

DROP VIEW adlsGold.vw_product_sales_rank;

SELECT TOP 10 * FROM adlsGold.fact_orders;

SELECT TOP 10 * FROM adlsGold.fact_delivery;

SELECT TOP 10 * FROM adlsGold.fact_daily_sales;

SELECT TOP 10 * FROM adlsGold.dim_customer;

SELECT TOP 10 * FROM adlsGold.dim_product;

SELECT TOP 10 * FROM adlsGold.dim_seller;

SELECT TOP 10 * FROM adlsGold.dim_seller;

SELECT * FROM adlsGold.vw_sales_kpi;

SELECT * FROM adlsGold.vw_delivery_performance;

SELECT * FROM adlsGold.vw_revenue_by_state;

SELECT * FROM adlsGold.vw_top_product ORDER BY total_sales DESC;

SELECT * FROM adlsGold.vw_revenue_by_seller ORDER BY total_revenue DESC;

SELECT * FROM adlsGold.vw_customer_segments;

SELECT * FROM adlsGold.vw_delivery_performance_by_state ORDER BY customer_state;

SELECT TOP 10 * FROM adlsGold.vw_product_sales_rank ORDER BY total_sales DESC;

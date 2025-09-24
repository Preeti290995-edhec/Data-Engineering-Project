USE olistecommercedb;

CREATE EXTERNAL TABLE adlsGold.fact_daily_sales (
    order_purchase_date DATE,
    total_orders BIGINT,
    total_revenue FLOAT,
    avg_order_value FLOAT,
    total_price FLOAT,
    avg_review_score FLOAT
)
WITH (
    LOCATION = 'fact_sales_daily/',
    DATA_SOURCE = GoldLayer,
    FILE_FORMAT = ExtFileFormat
);
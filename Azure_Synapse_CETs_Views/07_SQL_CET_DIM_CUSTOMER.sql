USE olistecommercedb;

CREATE EXTERNAL TABLE adlsGold.dim_customer (
    customer_id VARCHAR(100),
    customer_unique_id VARCHAR(100),
    customer_zip_code_prefix INT,
    customer_city VARCHAR(100),
    customer_state VARCHAR(100),
    total_orders BIGINT,
    total_revenue FLOAT,
    avg_review_score FLOAT,
    first_purchase_date DATE,
    last_purchase_date DATE
)
WITH (
    LOCATION = 'dim_customer/',
    DATA_SOURCE = GoldLayer,
    FILE_FORMAT = ExtFileFormat
);
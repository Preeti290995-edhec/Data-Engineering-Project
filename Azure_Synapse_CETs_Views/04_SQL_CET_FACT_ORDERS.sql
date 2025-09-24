USE olistecommercedb;

CREATE SCHEMA adlsGold;

CREATE EXTERNAL TABLE adlsGold.fact_orders (
    order_id VARCHAR(100),
    customer_id VARCHAR(100),
    product_id VARCHAR(100),
    seller_id VARCHAR(100),
    order_status VARCHAR(100),
    payment_value FLOAT,
    price FLOAT,
    freight_value FLOAT,
    review_score INT,
    order_purchase_date DATE,
    order_delivered_customer_date DATE,
    order_estimated_delivery_date DATE
)
WITH (
    LOCATION = 'fact_orders/',
    DATA_SOURCE = GoldLayer,
    FILE_FORMAT = ExtFileFormat
);
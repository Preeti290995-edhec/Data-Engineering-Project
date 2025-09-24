USE olistecommercedb;

CREATE EXTERNAL TABLE adlsGold.fact_delivery (
    order_id VARCHAR(100),
    customer_id VARCHAR(100),
    order_status VARCHAR(100),
    order_delivered_carrier_date DATE,
    order_delivered_customer_date DATE,
    order_estimated_delivery_date DATE,
    order_purchase_time DATETIME2,
    order_purchase_date DATE,
    order_approved_at_time DATETIME2,
    order_approved_at_date DATE,
    order_delivered_carrier_time DATETIME2,
    order_delivered_customer_time DATETIME2,
    order_estimated_delivery_time DATETIME2,
    order_item_id INT,
    product_id VARCHAR(100),
    seller_id VARCHAR(100),
    shipping_limit_date DATE,
    price FLOAT,
    freight_value FLOAT,
    shipping_limit_time DATETIME2,
    delivery_delay_days INT,
    delay_flag BIT
)
WITH (
    LOCATION = 'fact_delivery/',
    DATA_SOURCE = GoldLayer,
    FILE_FORMAT = ExtFileFormat
)
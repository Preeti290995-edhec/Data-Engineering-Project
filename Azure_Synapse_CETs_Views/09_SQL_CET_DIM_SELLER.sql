USE olistecommercedb;

CREATE EXTERNAL TABLE adlsGold.dim_seller (
    seller_id VARCHAR(100),
    seller_zip_code_prefix INT,
    seller_city VARCHAR(100),
    seller_state VARCHAR(100)
)
WITH (
    LOCATION = 'dim_seller/',
    DATA_SOURCE = GoldLayer,
    FILE_FORMAT = ExtFileFormat
);
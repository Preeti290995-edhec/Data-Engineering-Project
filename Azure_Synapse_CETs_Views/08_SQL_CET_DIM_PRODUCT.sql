USE olistecommercedb;

CREATE EXTERNAL TABLE adlsGold.dim_product (
    product_category_name VARCHAR(100),
    product_id VARCHAR(100),
    product_name_lenght INT,
    product_description_lenght INT,
    product_photos_qty INT,
    product_weight_g INT,
    product_length_cm INT,
    product_height_cm INT,
    product_width_cm INT,
    product_category_name_english VARCHAR(100)
)
WITH (
    LOCATION = 'dim_product/',
    DATA_SOURCE = GoldLayer,
    FILE_FORMAT = ExtFileFormat
);
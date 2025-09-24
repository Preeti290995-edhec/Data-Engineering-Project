USE olistecommercedb;

CREATE EXTERNAL TABLE adlsGold.dim_geolocation (
    geolocation_zip_code_prefix INT,
    geolocation_lat FLOAT,
    geolocation_lng FLOAT,
    geolocation_city VARCHAR(100),
    geolocation_state VARCHAR(100)
)
WITH (
    LOCATION = 'dim_geolocation/',
    DATA_SOURCE = GoldLayer,
    FILE_FORMAT = ExtFileFormat
);
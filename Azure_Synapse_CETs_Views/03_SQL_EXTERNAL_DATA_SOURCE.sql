USE olistecommercedb;

CREATE EXTERNAL DATA SOURCE GoldLayer 
WITH (
    LOCATION = 'https://storageaccountolistecom.dfs.core.windows.net/container-olist-ecommerce-data/Gold/',
    CREDENTIAL = SekarAdmin
);
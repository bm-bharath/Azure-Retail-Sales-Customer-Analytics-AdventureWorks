CREATE MASTER KEY ENCRYPTION BY PASSWORD =''

CREATE DATABASE SCOPED CREDENTIAL cred_bm
WITH
    IDENTITY = 'Managed Identity'



CREATE EXTERNAL DATA SOURCE source_silver
WITH
(
    LOCATION = 'https://azuredataprojectdatalake.blob.core.windows.net/silver',
    CREDENTIAL = cred_bm
)


CREATE EXTERNAL DATA SOURCE source_gold
WITH
(
    LOCATION = 'https://azuredataprojectdatalake.blob.core.windows.net/gold',
    CREDENTIAL = cred_bm
)



CREATE EXTERNAL FILE FORMAT format_parquet
WITH
(
    FORMAT_TYPE = PARQUET,
    DATA_COMPRESSION = 'org.apache.hadoop.io.compress.SnappyCodec'
)



------------------------
-- CREATE EXTERNAL TABLE EXTSALE
----------------------------------

CREATE EXTERNAL TABLE gold.extsales
WITH
(
    LOCATION = 'extsales',
    DATA_SOURCE = source_gold,
    FILE_FORMAT = format_parquet
)
AS
SELECT * FROM gold.sales;


SELECT * FROM gold.sales;


CREATE EXTERNAL TABLE gold.extproducts
WITH
(
    LOCATION = 'extproducts',
    DATA_SOURCE = source_gold,
    FILE_FORMAT = format_parquet
)
AS
SELECT * FROM gold.products;

SELECT * FROM gold.products;



CREATE EXTERNAL TABLE gold.extcustomers
WITH
(
    LOCATION = 'extcustomers',
    DATA_SOURCE = source_gold,
    FILE_FORMAT = format_parquet
)
AS
SELECT * FROM gold.customers;

SELECT * FROM gold.customers;


CREATE EXTERNAL TABLE gold.extcalendar
WITH
(
    LOCATION = 'extcalendar',
    DATA_SOURCE = source_gold,
    FILE_FORMAT = format_parquet
)
AS
SELECT * FROM gold.calendar;

SELECT * FROM gold.calendar;



CREATE EXTERNAL TABLE gold.extreturns
WITH
(
    LOCATION = 'extreturns',
    DATA_SOURCE = source_gold,
    FILE_FORMAT = format_parquet
)
AS
SELECT * FROM gold.returns;

SELECT * FROM gold.returns;




CREATE EXTERNAL TABLE gold.extsubcat
WITH
(
    LOCATION = 'extsubcat',
    DATA_SOURCE = source_gold,
    FILE_FORMAT = format_parquet
)
AS
SELECT * FROM gold.subcat;

SELECT * FROM gold.subcat;



CREATE EXTERNAL TABLE gold.extterritories
WITH
(
    LOCATION = 'extterritories',
    DATA_SOURCE = source_gold,
    FILE_FORMAT = format_parquet
)
AS
SELECT * FROM gold.territories;

SELECT * FROM gold.territories;
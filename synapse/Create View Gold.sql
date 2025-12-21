------------------------
-- CREATE VIEW CALENDAR
------------------------
CREATE VIEW gold.calendar
AS
SELECT 
    * 
FROM 
    OPENROWSET
        (
            BULK 'https://azuredataprojectdatalake.blob.core.windows.net/silver/AdventureWorks_Calendar/',
            FORMAT = 'PARQUET'
        ) as QUER1

------------------------
-- CREATE VIEW CUSTOMERS
------------------------
CREATE VIEW gold.customers
AS
SELECT 
    * 
FROM 
    OPENROWSET
        (
            BULK 'https://azuredataprojectdatalake.blob.core.windows.net/silver/AdventureWorks_Customer/',
            FORMAT = 'PARQUET'
        ) as QUER1



------------------------
-- CREATE VIEW PRODUCTS
------------------------
CREATE VIEW gold.products
AS
SELECT 
    * 
FROM 
    OPENROWSET
        (
            BULK 'https://azuredataprojectdatalake.blob.core.windows.net/silver/AdventureWorks_Product/',
            FORMAT = 'PARQUET'
        ) as QUER1


------------------------
-- CREATE VIEW RETURNS
------------------------
CREATE VIEW gold.returns
AS
SELECT 
    * 
FROM 
    OPENROWSET
        (
            BULK 'https://azuredataprojectdatalake.blob.core.windows.net/silver/AdventureWorks_Return/',
            FORMAT = 'PARQUET'
        ) as QUER1
        


    ------------------------
-- CREATE VIEW SALES
------------------------
CREATE VIEW gold.sales
AS
SELECT 
    * 
FROM 
    OPENROWSET
        (
            BULK 'https://azuredataprojectdatalake.blob.core.windows.net/silver/AdventureWorks_Sales/',
            FORMAT = 'PARQUET'
        ) as QUER1


------------------------
-- CREATE VIEW SUBCAT
------------------------
CREATE VIEW gold.subcat
AS
SELECT 
    * 
FROM 
    OPENROWSET
        (
            BULK 'https://azuredataprojectdatalake.blob.core.windows.net/silver/AdventureWorks_SubCategory/',
            FORMAT = 'PARQUET'
        ) as QUER1



------------------------
-- CREATE VIEW TERRITORIES
------------------------
CREATE VIEW gold.territories
AS
SELECT 
    * 
FROM 
    OPENROWSET
        (
            BULK 'https://azuredataprojectdatalake.blob.core.windows.net/silver/AdventureWorks_Territory/',
            FORMAT = 'PARQUET'
        ) as QUER1

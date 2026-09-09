create database olist_source;
use olist_source
GO


IF OBJECT_ID('olist_customers', 'U') IS NOT NULL
    DROP TABLE olist_customers;
create table olist_customers(
customer_id varchar(100),
customer_unique_id varchar(100),
customer_zip_code_prefix varchar(10),
customer_city varchar(50),
customer_state varchar(100)
)


IF OBJECT_ID('olist_geolocation', 'U') IS NOT NULL
    DROP TABLE olist_geolocation;
create table olist_geolocation(
geolocation_zip_code_prefix int,
geolocation_lat float,
geolocation_lng float,
geolocation_city varchar(50),
geolocation_state varchar(50)
)


IF OBJECT_ID('olist_order_items', 'U') IS NOT NULL
    DROP TABLE olist_order_items;
create table olist_order_items(
order_id varchar(100),
order_item_id int,
product_id varchar(50),
seller_id varchar(50),
shipping_limit_date datetime,
price float,
freight_value float
)


IF OBJECT_ID('olist_order_payments', 'U') IS NOT NULL
    DROP TABLE olist_order_payments;
create table olist_order_payments(
order_id varchar(100),
payment_sequential int,
payment_type varchar(50),
payment_installments int,
payment_value float
)


IF OBJECT_ID('olist_order_reviews', 'U') IS NOT NULL
    DROP TABLE olist_order_reviews;
create table olist_order_reviews(
review_id varchar(100),
order_id varchar(100),
review_score int,
review_comment_title nvarchar(500),
review_comment_message varchar(max),
review_creation_date datetime,
review_answer_timestamp datetime
)


IF OBJECT_ID('olist_orders', 'U') IS NOT NULL
    DROP TABLE olist_orders;
create table olist_orders(
order_id varchar(100),
customer_id varchar(100),
order_status varchar(50),
order_purchase_timestamp datetime,
order_approved_at datetime,
order_delivered_carrier_date datetime,
order_delivered_customer_date datetime,
order_estimated_delivery_date datetime
)


IF OBJECT_ID('olist_products', 'U') IS NOT NULL
    DROP TABLE olist_products;
create table olist_products(
product_id varchar(100),
product_category_name varchar(100),
product_name_lenght int,
product_description_lenght int,
product_photos_qty int,
product_weight_g int,
product_length_cm int,
product_height_cm int,
product_width_cm int
)


IF OBJECT_ID('olist_sellers', 'U') IS NOT NULL
    DROP TABLE olist_sellers;
create table olist_sellers(
seller_id varchar(100),
seller_zip_code_prefix varchar(10),
seller_city varchar(50),
seller_state varchar(50)
)


IF OBJECT_ID('product_category_name_translation', 'U') IS NOT NULL
    DROP TABLE product_category_name_translation;
create table product_category_name_translation(
product_category_name varchar(100),
product_category_name_translation varchar(100)
)







	
truncate table olist_customers
BULK INSERT olist_customers
		FROM "C:\Users\allal\Downloads\archive\olist_customers_dataset.csv"
		WITH (
			FORMAT = 'CSV',
			FIRSTROW = 2,
			FIELDTERMINATOR = ',',
			FIELDQUOTE = '"',
			ROWTERMINATOR = '0x0a',
			TABLOCK
		);

select * from olist_customers


truncate table olist_geolocation
BULK INSERT olist_geolocation
		FROM "C:\Users\allal\Downloads\archive\olist_geolocation_dataset.csv"
		WITH (
			FORMAT = 'CSV',
			FIRSTROW = 2,
			FIELDTERMINATOR = ',',
			FIELDQUOTE = '"',
			ROWTERMINATOR = '0x0a',
			TABLOCK
		);
select * from olist_geolocation

truncate table olist_order_items
BULK INSERT olist_order_items
		FROM "C:\Users\allal\Downloads\archive\olist_order_items_dataset.csv"
		WITH (
			FORMAT = 'CSV',
			FIRSTROW = 2,
			FIELDTERMINATOR = ',',
			FIELDQUOTE = '"',
			ROWTERMINATOR = '0x0a',
			TABLOCK
		);
select * from olist_order_items


truncate table olist_order_payments
BULK INSERT olist_order_payments
		FROM "C:\Users\allal\Downloads\archive\olist_order_payments_dataset.csv"
		WITH (
			FORMAT = 'CSV',
			FIRSTROW = 2,
			FIELDTERMINATOR = ',',
			FIELDQUOTE = '"',
			ROWTERMINATOR = '0x0a',
			TABLOCK
		);
select * from olist_order_payments





BULK INSERT olist_order_reviews
FROM 'C:\Users\allal\Downloads\archive\olist_order_reviews_dataset.csv'
WITH
(
    FORMAT = 'CSV',
    FIELDQUOTE = '"',
    FIRSTROW = 2,
    CODEPAGE = '65001',
    TABLOCK
);
GO

select * from olist_order_reviews


truncate table olist_orders
BULK INSERT olist_orders
		FROM "C:\Users\allal\Downloads\archive\olist_orders_dataset.csv"
		WITH (
			FORMAT = 'CSV',
			FIRSTROW = 2,
			FIELDTERMINATOR = ',',
			FIELDQUOTE = '"',
			ROWTERMINATOR = '0x0a',
			TABLOCK
		);
select * from olist_orders

	

truncate table olist_products
BULK INSERT olist_products
		FROM "C:\Users\allal\Downloads\archive\olist_products_dataset.csv"
		WITH (
			FORMAT = 'CSV',
			FIRSTROW = 2,
			FIELDTERMINATOR = ',',
			FIELDQUOTE = '"',
			ROWTERMINATOR = '0x0a',
			TABLOCK
		);
select * from olist_products


truncate table olist_sellers
BULK INSERT olist_sellers
		FROM "C:\Users\allal\Downloads\archive\olist_sellers_dataset.csv"
		WITH (
			FORMAT = 'CSV',
			FIRSTROW = 2,
			FIELDTERMINATOR = ',',
			FIELDQUOTE = '"',
			ROWTERMINATOR = '0x0a',
			TABLOCK
		);
select * from olist_sellers


truncate table product_category_name_translation
BULK INSERT product_category_name_translation
		FROM "C:\Users\allal\Downloads\archive\product_category_name_translation.csv"
		WITH (
			FORMAT = 'CSV',
			FIRSTROW = 2,
			FIELDTERMINATOR = ',',
			FIELDQUOTE = '"',
			ROWTERMINATOR = '0x0a',
			TABLOCK
		);
select * from product_category_name_translation

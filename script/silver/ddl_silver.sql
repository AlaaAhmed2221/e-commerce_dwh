IF OBJECT_ID('silver.olist_customers', 'U') IS NOT NULL
    DROP TABLE silver.olist_customers;
create table silver.olist_customers(
customer_id varchar(100),
customer_unique_id varchar(100),
customer_zip_code_prefix varchar(10),
customer_city varchar(50),
customer_state varchar(100)
)
Go


IF OBJECT_ID('silver.olist_geolocation', 'U') IS NOT NULL
    DROP TABLE silver.olist_geolocation;
create table silver.olist_geolocation(
geolocation_zip_code_prefix int,
geolocation_lat float,
geolocation_lng float,
geolocation_city varchar(50),
geolocation_state varchar(50)
)
GO

IF OBJECT_ID('silver.olist_order_items', 'U') IS NOT NULL
    DROP TABLE silver.olist_order_items;
create table silver.olist_order_items(
order_id varchar(100),
order_item_id int,
product_id varchar(50),
seller_id varchar(50),
shipping_limit_date datetime,
price float,
freight_value float
)
GO


IF OBJECT_ID('silver.olist_order_payments', 'U') IS NOT NULL
    DROP TABLE silver.olist_order_payments;
create table silver.olist_order_payments(
order_id varchar(100),
payment_sequential int,
payment_type varchar(50),
payment_installments int,
payment_value float
)
GO

IF OBJECT_ID('silver.olist_order_reviews', 'U') IS NOT NULL
    DROP TABLE silver.olist_order_reviews;
create table silver.olist_order_reviews(
review_id varchar(100),
order_id varchar(100),
review_score int,
review_comment_title nvarchar(500),
review_comment_message varchar(max),
review_creation_date datetime,
review_answer_timestamp datetime
)
GO

IF OBJECT_ID('silver.olist_orders', 'U') IS NOT NULL
    DROP TABLE silver.olist_orders;
create table silver.olist_orders(
order_id varchar(100),
customer_id varchar(100),
order_status varchar(50),
order_purchase_timestamp datetime,
order_approved_at datetime,
order_delivered_carrier_date datetime,
order_delivered_customer_date datetime,
order_estimated_delivery_date datetime
)
GO

IF OBJECT_ID('silver.olist_products', 'U') IS NOT NULL
    DROP TABLE silver.olist_products;
create table silver.olist_products(
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
GO

IF OBJECT_ID('silver.olist_sellers', 'U') IS NOT NULL
    DROP TABLE silver.olist_sellers;
create table silver.olist_sellers(
seller_id varchar(100),
seller_zip_code_prefix varchar(10),
seller_city varchar(50),
seller_state varchar(50)
)
GO

IF OBJECT_ID('silver.product_category_name_translation', 'U') IS NOT NULL
    DROP TABLE silver.product_category_name_translation;
create table silver.product_category_name_translation(
product_category_name varchar(100),
product_category_name_translation varchar(100)
)
Go

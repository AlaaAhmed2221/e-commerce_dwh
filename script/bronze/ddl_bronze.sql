
IF OBJECT_ID('bronze.olist_customers', 'U') IS NOT NULL
    DROP TABLE bronze.olist_customers;
create table bronze.olist_customers(
customer_id varchar(100),
customer_unique_id varchar(100),
customer_zip_code_prefix varchar(10),
customer_city varchar(50),
customer_state varchar(100)
)


IF OBJECT_ID('bronze.olist_geolocation', 'U') IS NOT NULL
    DROP TABLE bronze.olist_geolocation;
create table bronze.olist_geolocation(
geolocation_zip_code_prefix int,
geolocation_lat float,
geolocation_lng float,
geolocation_city varchar(50),
geolocation_state varchar(50)
)


IF OBJECT_ID('bronze.olist_order_items', 'U') IS NOT NULL
    DROP TABLE bronze.olist_order_items;
create table bronze.olist_order_items(
order_id varchar(100),
order_item_id int,
product_id varchar(50),
seller_id varchar(50),
shipping_limit_date datetime,
price float,
freight_value float
)


IF OBJECT_ID('bronze.olist_order_payments', 'U') IS NOT NULL
    DROP TABLE bronze.olist_order_payments;
create table bronze.olist_order_payments(
order_id varchar(100),
payment_sequential int,
payment_type varchar(50),
payment_installments int,
payment_value float
)


IF OBJECT_ID('bronze.olist_order_reviews', 'U') IS NOT NULL
    DROP TABLE bronze.olist_order_reviews;
create table bronze.olist_order_reviews(
review_id varchar(100),
order_id varchar(100),
review_score int,
review_comment_title nvarchar(500),
review_comment_message varchar(max),
review_creation_date datetime,
review_answer_timestamp datetime
)


IF OBJECT_ID('bronze.olist_orders', 'U') IS NOT NULL
    DROP TABLE bronze.olist_orders;
create table bronze.olist_orders(
order_id varchar(100),
customer_id varchar(100),
order_status varchar(50),
order_purchase_timestamp datetime,
order_approved_at datetime,
order_delivered_carrier_date datetime,
order_delivered_customer_date datetime,
order_estimated_delivery_date datetime
)


IF OBJECT_ID('bronze.olist_products', 'U') IS NOT NULL
    DROP TABLE bronze.olist_products;
create table bronze.olist_products(
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


IF OBJECT_ID('bronze.olist_sellers', 'U') IS NOT NULL
    DROP TABLE bronze.olist_sellers;
create table bronze.olist_sellers(
seller_id varchar(100),
seller_zip_code_prefix varchar(10),
seller_city varchar(50),
seller_state varchar(50)
)


IF OBJECT_ID('bronze.product_category_name_translation', 'U') IS NOT NULL
    DROP TABLE bronze.product_category_name_translation;
create table bronze.product_category_name_translation(
product_category_name varchar(100),
product_category_name_translation varchar(100)
)

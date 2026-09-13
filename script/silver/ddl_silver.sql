--------------------------------------------------
-- 1. DDL Statements (Create Tables)
--------------------------------------------------

if object_id('silver.olist_customers', 'U') is not null
    drop table silver.olist_customers;
create table silver.olist_customers(
    customer_id varchar(100),
    customer_unique_id varchar(100),
    customer_zip_code_prefix varchar(10),
    customer_city varchar(50),
    customer_state varchar(100),
    dwh_create_date datetime2 default getdate()
);
go

if object_id('silver.olist_geolocation', 'U') is not null
    drop table silver.olist_geolocation;
create table silver.olist_geolocation(
    geolocation_zip_code_prefix int,
    geolocation_lat float,
    geolocation_lng float,
    geolocation_city varchar(50),
    geolocation_state varchar(50),
    dwh_create_date datetime2 default getdate()
);
go

if object_id('silver.olist_order_items', 'U') is not null
    drop table silver.olist_order_items;
create table silver.olist_order_items(
    order_id varchar(100),
    order_item_id int,
    product_id varchar(50),
    seller_id varchar(50),
    shipping_limit_date datetime,
    price float,
    freight_value float,
    dwh_create_date datetime2 default getdate()
);
go

if object_id('silver.olist_order_payments', 'U') is not null
    drop table silver.olist_order_payments;
create table silver.olist_order_payments(
    order_id varchar(100),
    payment_sequential int,
    payment_type varchar(50),
    payment_installments int,
    payment_value float,
    dwh_create_date datetime2 default getdate()
);
go

if object_id('silver.olist_order_reviews', 'U') is not null
    drop table silver.olist_order_reviews;
create table silver.olist_order_reviews(
    review_id varchar(100),
    order_id varchar(100),
    review_score int,
    review_comment_title nvarchar(500),
    review_comment_message varchar(max),
    review_creation_date datetime,
    review_answer_timestamp datetime,
    dwh_create_date datetime2 default getdate()
);
go

if object_id('silver.olist_orders', 'U') is not null
    drop table silver.olist_orders;
create table silver.olist_orders(
    order_id varchar(100),
    customer_id varchar(100),
    order_status varchar(50),
    order_purchase_timestamp datetime,
    order_approved_at datetime,
    order_delivered_carrier_date datetime,
    order_delivered_customer_date datetime,
    order_estimated_delivery_date datetime,
    is_valid_timeline bit,        
    is_late_delivery int,          
    actual_delivery_days int,
    estimated_delivery_days int,
    dwh_create_date datetime2 default getdate()
);
go

if object_id('silver.olist_products', 'U') is not null
    drop table silver.olist_products;
create table silver.olist_products(
    product_id varchar(100),
    product_category_name varchar(100),
    product_name_length int,
    product_description_length int,
    product_photos_qty int,
    product_weight_g int,
    product_length_cm int,
    product_height_cm int,
    product_width_cm int,
    product_volume_cm3 bigint,            
    product_weight_kg decimal(10, 3),    
    has_valid_dimensions bit,            
    dwh_create_date datetime2 default getdate()
);
go

if object_id('silver.olist_sellers', 'U') is not null
    drop table silver.olist_sellers;
create table silver.olist_sellers(
    seller_id varchar(100),
    seller_zip_code_prefix varchar(10),
    seller_city varchar(50),
    seller_state varchar(50),
    dwh_create_date datetime2 default getdate()
);
go

if object_id('silver.product_category_name_translation', 'U') is not null
    drop table silver.product_category_name_translation;
create table silver.product_category_name_translation(
    product_category_name varchar(100),
    product_category_name_translation varchar(100),
    dwh_create_date datetime2 default getdate()
);
go

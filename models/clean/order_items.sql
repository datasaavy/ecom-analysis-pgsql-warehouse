with order_items as (
    select 
    id as order_items_id,
    sale_price ::numeric(10, 2) AS ord_product_retail_price,
    product_id,
    user_id,
    inventory_item_id,
    DATE(date) AS ordered_date,
    /*EXTRACT(MONTH FROM date) AS month_,*/
    TO_CHAR(date, 'Month') AS month,
    status as order_status
    from
    ecommdb_dbo.order_items_2023    
)

select * from order_items


with inv_items as(
    select * from {{ ref('inventory_items') }}
),

 ord_items as(
    select * from {{ ref('order_items') }}
),

inv_it_ord_items as (
    SELECT 
        ord_it.order_items_id as order_item_id
        ,ord_it.ord_product_retail_price as retail_price
        ,ord_it.product_id as product_id
        ,ord_it.user_id as user_id
        ,ord_it.inventory_item_id as inventory_item_id
        ,ord_it.ordered_date
        ,ord_it.month
        ,ord_it.order_status
        ,inv_it.inventory_id
        ,inv_it.cost_price
        ,inv_it.product_name
        ,inv_it.product_brand
        ,inv_it.product_category
        ,inv_it.product_department
    FROM ord_items ord_it
    JOIN inv_items inv_it 
    ON 
    ord_it.inventory_item_id = inv_it.inventory_id
)

select * from inv_it_ord_items
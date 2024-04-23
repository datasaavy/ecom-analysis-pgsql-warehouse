with inventory as ( 
    select 
    id as inventory_id,
    product_retail_price::numeric(10, 2) AS product_retail_price,
    cost::numeric(10, 2) AS cost_price,
    product_name,
    product_id,
    product_brand,
    product_category,
    product_department
    from ecommdb_dbo.inventory_items
    )
select * from inventory

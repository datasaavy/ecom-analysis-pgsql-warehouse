with users as (
    select
    id as user_id,
    gender,
    country,
    state,
    city,
    traffic_source,
    DATE(created_at) as customer_since    
    from ecommdb_dbo.users
    
)

select * from users
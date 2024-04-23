with jiiot as (
    select * from {{ ref('join_inv_it_ord_items') }}
),

users_info as (
    select * from {{ ref('user_details') }}
),

final_table as (
    select 
    *
    from
    jiiot
    JOIN
    users_info
    USING(user_id)
)

select * from final_table
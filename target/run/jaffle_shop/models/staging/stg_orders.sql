
  create or replace  view RAW.PUBLIC.stg_orders
  
   as (
    with source as (
    select * from RAW.PUBLIC.raw_orders

),

renamed as (

    select
        id as order_id,
        user_id as customer_id,
        order_date,
        status

    from source

)

select * from renamed
  );
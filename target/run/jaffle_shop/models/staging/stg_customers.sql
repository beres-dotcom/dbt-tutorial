
  create or replace  view RAW.PUBLIC.stg_customers
  
   as (
    with source as (
    select * from RAW.PUBLIC.raw_customers

),

renamed as (

    select
        id as customer_id,
        first_name,
        last_name

    from source

)

select * from renamed
  );

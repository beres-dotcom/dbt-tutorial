
    
    

select
    customer_id as unique_field,
    count(*) as n_records

from RAW.PUBLIC.customers
where customer_id is not null
group by customer_id
having count(*) > 1



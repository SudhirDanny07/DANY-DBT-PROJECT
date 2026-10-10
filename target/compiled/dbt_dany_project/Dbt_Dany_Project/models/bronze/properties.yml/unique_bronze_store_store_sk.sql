
    
    

select
    store_sk as unique_field,
    count(*) as n_records

from `danny_dbt_dev`.`bronze`.`bronze_store`
where store_sk is not null
group by store_sk
having count(*) > 1



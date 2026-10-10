
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select store_sk
from `danny_dbt_dev`.`bronze`.`bronze_store`
where store_sk is null



  
  
      
    ) dbt_internal_test
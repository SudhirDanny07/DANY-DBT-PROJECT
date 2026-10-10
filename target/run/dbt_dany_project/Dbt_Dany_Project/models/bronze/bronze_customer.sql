
  
    
        create or replace table `danny_dbt_prod`.`bronze`.`bronze_customer`
      
      
  using delta
      
      
      
      
      
      
      
      as
      select * from `danny_dbt_prod`.`source`.`dim_customer`
  
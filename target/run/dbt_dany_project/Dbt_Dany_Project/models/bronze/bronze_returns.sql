
  
    
        create or replace table `danny_dbt_prod`.`bronze`.`bronze_returns`
      
      
  using delta
      
      
      
      
      
      
      
      as
      select * from `danny_dbt_prod`.`source`.`fact_returns`
  

  
    
        create or replace table `danny_dbt_dev`.`bronze`.`bronze_returns`
      
      
  using delta
      
      
      
      
      
      
      
      as
      select * from `danny_dbt_dev`.`source`.`fact_returns`
  
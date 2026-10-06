
  
    
        create or replace table `danny_dbt_dev`.`bronze`.`bronze_customer`
      
      
  using delta
      
      
      
      
      
      
      
      as
      select * from `danny_dbt_dev`.`source`.`dim_customer`
  
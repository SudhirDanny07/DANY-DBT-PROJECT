
  
    
        create or replace table `danny_dbt_dev`.`default`.`bronze_customer`
      
      
  using delta
      
      
      
      
      
      
      
      as
      select * from `danny_dbt_dev`.`source`.`dim_customer`
  
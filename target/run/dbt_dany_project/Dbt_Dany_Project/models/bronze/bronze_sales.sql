
  
  
  create or replace view `danny_dbt_prod`.`bronze`.`bronze_sales`
  
  as (
    select * from `danny_dbt_prod`.`source`.`fact_sales`
  )

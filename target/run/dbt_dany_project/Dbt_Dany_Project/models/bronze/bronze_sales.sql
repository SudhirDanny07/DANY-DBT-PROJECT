
  
  
  create or replace view `danny_dbt_dev`.`default`.`bronze_sales`
  
  as (
    select * from `danny_dbt_dev`.`source`.`fact_sales`
  )

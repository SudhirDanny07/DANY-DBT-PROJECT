
  
  
  create or replace view `danny_dbt_prod`.`bronze`.`bronze_product`
  
  as (
    select * from `danny_dbt_prod`.`source`.`dim_product`
  )

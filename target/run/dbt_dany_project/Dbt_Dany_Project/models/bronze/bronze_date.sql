
  
  
  create or replace view `danny_dbt_prod`.`bronze`.`bronze_date`
  
  as (
    select * from `danny_dbt_prod`.`source`.`dim_date`
  )

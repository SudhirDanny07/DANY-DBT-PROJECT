
  
  
  create or replace view `danny_dbt_dev`.`default`.`bronze_date`
  
  as (
    select * from `danny_dbt_dev`.`source`.`dim_date`
  )

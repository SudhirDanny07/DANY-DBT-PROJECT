
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  select * from `danny_dbt_dev`.`bronze`.`bronze_sales`
where gross_amount < 0 or net_amount < 0
  
  
      
    ) dbt_internal_test
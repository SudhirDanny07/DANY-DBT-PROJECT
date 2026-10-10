select * from `danny_dbt_prod`.`bronze`.`bronze_sales`
where gross_amount < 0 or net_amount < 0
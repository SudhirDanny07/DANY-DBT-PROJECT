




select

    
        sales_id
        ,
    
        data_sk
        ,
    
        gross_amount
        
    

from `danny_dbt_dev`.`bronze`.`bronze_sales`


where data_sk > 3

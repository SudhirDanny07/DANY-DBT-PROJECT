
      
  
    
        create or replace table `danny_dbt_prod`.`gold`.`gold_items`
      
      
  using delta
      
      
      
      
      
      
      
      as
      
    

    select *,
        md5(coalesce(cast(id as string ), '')
         || '|' || coalesce(cast(updateDate as string ), '')
        ) as dbt_scd_id,
        updateDate as dbt_updated_at,
        updateDate as dbt_valid_from,
        
  
  coalesce(nullif(updateDate, updateDate), to_date('9999-12-31'))
  as dbt_valid_to
from (
        select * from `danny_dbt_prod`.`gold`.`source_gold_items`
    ) sbq



  
  
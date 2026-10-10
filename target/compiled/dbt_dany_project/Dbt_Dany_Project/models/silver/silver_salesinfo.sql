with sales as (
    select 
        sales_id,
        product_sk,
        customer_sk,
        
    unit_price * quantity
 as calculated_gross_amount,
        gross_amount,
        payment_method
     from `danny_dbt_prod`.`bronze`.`bronze_sales`
),

products as (
    select 
        product_sk,
        category
     from `danny_dbt_prod`.`bronze`.`bronze_product`
),

customer as (
    select 
        customer_sk,
        gender 
    from `danny_dbt_prod`.`bronze`.`bronze_customer`
),

gender_category_sales as (
    select customer.gender,
           products.category,
           sum(sales.calculated_gross_amount) as total_calculated_sales
    from sales
    join products on sales.product_sk = products.product_sk
    join customer on sales.customer_sk = customer.customer_sk
    group by customer.gender, products.category
)

select gender,
       category,
       total_calculated_sales,
       rank() over (
           partition by gender
           order by total_calculated_sales desc
       ) as category_performance_rank
from gender_category_sales
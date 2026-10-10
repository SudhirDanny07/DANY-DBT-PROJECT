with returns as (
    select sales_id,
           product_sk,
           returned_qty
    from `danny_dbt_dev`.`bronze`.`bronze_returns`
),

sales as (
    select sales_id,
           customer_sk
    from `danny_dbt_dev`.`bronze`.`bronze_sales`
),

products as (
    select product_sk,
           category
    from `danny_dbt_dev`.`bronze`.`bronze_product`
),

customers as (
    select customer_sk,
           gender
    from `danny_dbt_dev`.`bronze`.`bronze_customer`
),

gender_category_returns as (
    select customers.gender,
           products.category,
           sum(returns.returned_qty) as total_returned_quantity
    from returns
    join sales on returns.sales_id = sales.sales_id
    join products on returns.product_sk = products.product_sk
    join customers on sales.customer_sk = customers.customer_sk
    group by customers.gender, products.category
)

select gender,
       category,
       total_returned_quantity,
       rank() over (
           partition by gender
           order by total_returned_quantity desc
       ) as category_return_rank
from gender_category_returns
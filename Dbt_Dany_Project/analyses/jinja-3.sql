{% set incr_load = 1 %}
{% set last_load = 3 %}

{% set list = ["sales_id","data_sk","gross_amount"]%}

select

    {% for i in list %}
        {{i}}
        {% if not loop.last %},{% endif %}
    {% endfor %}

from {{ref('bronze_sales')}}

{% if incr_load == 1 %}
where data_sk > {{last_load}}
{% endif %}

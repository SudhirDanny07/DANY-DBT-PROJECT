{%- set apples = ["Fuji", "Gala", "Honeycrisp", "Granny Smith", "Red Delicious"] -%}

{% for i in apples %}

    {% if i != "Gala" %}
        {{ i }}
    {% else %}
        <!-- Skipping Gala -->
    {% endif %}
{% endfor %}
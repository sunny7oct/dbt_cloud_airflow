-- Override the table name to based on requirements
{% macro custom_model_name(table_name) %}

{% set prefix = "dev" %}

{% set model_name = prefix + "_"  + table_name %}

{{ return(model_name) }}

{% endmacro %}

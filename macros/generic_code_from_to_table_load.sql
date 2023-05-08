{% macro load_table(from_table, to_table, columns = "*", where_clause = "") %}

    INSERT INTO {{to_table}} ({{ columns }})
    SELECT {{ columns }}
    FROM {{ from_table }}
    {% if where_clause %}
    WHERE {{ where_clause }}
    {% endif %};

{% endmacro %}
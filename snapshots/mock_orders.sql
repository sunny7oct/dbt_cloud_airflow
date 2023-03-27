{% snapshot analytics_mock_orders %}

{% set new_schema = target.schema + '_snapshot' %}

{{
    config(
        target_database="dm_db",
        target_schema="airflow",
        unique_key="order_id",
        strategy="timestamp",
        updated_at="updated_at",
    )
}}

select *
from dm_db.{{ target.schema }}.analytics_mock_orders

{% endsnapshot %}

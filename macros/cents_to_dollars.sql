{% macro cents_to_dollars(value, decimal_places=2) %}

    round( 1.0 * {{value}} / 100, {{decimal_places}} )

{% endmacro %}
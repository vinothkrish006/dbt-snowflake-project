
{{ config(materialized='view') }}

select
    e.employee_id,
    e.first_name,
    e.salary,
    d.department_name

from {{ source('SNOWFLAKE_RAW','EMPLOYEES') }} e
join {{ source('SNOWFLAKE_RAW','DEPARTMENTS') }} d
on e.department_id = d.department_id
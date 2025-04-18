select emp_id, sum(salary) as total_salary
from {{ ref("dim_employee1_profile") }}
group by emp_id
having total_salary < 0

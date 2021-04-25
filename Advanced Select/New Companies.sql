select
    a.company_code,
    b.founder,
    count(distinct a.lead_manager_code) as count_lm,
    count(distinct a.senior_manager_code) as count_sm,
    count(distinct a.manager_code) as count_m,
    count(distinct a.employee_code) as count_emp
from Employee  a,  Company  b
where a.company_code = b.company_code
group by 1, 2
order by 1;
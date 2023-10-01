--1

select id,first_name,last_name,department_id,max(salary) from ms_employee_salary group by id order by id;

-2
select distinct id,first_name,last_name,department_id,max(salary) over (partition by id ) as max from ms_employee_salary order by id ;

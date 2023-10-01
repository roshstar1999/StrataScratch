--2 solutions tried

--1
select abs(ee.salary - m.salary)  as salary_difference from (select max(salary)  as salary from db_employee e join db_dept d on e.department_id=d.id  where d.department='marketing') ee
,(select max(salary) as salary from db_employee e join db_dept d on e.department_id=d.id  where d.department='engineering' ) m;

--2
select abs(max(case
    when dep.department='marketing' then emp.salary
    else 0
    end)-max(case
    when dep.department='engineering' then emp.salary
    else 0
    end)) as salary_difference from db_employee emp join db_dept dep on emp.department_id=dep.id;

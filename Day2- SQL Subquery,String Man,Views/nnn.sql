-- find the highest 14th salary
select *
from (select * from EMPLOYEES order by SALARY desc)
where ROWNUM < 15;

-- bu durumda en düsük maasi görüyoruz ama biz ekran da sadec en düsük salary ' i istiyoruz

select min(SALARY)
from (select * from EMPLOYEES order by SALARY desc)
where ROWNUM < 15;

-- find the highest 24th salary
select min(SALARY)
from (select * from EMPLOYEES order by SALARY desc)
where ROWNUM < 25;

-- find the employees info who is making 14th highest  salary

select *
from EMPLOYEES
where SALARY = 10500;

select *
from EMPLOYEES
where SALARY = (select min(SALARY)
                from (select * from EMPLOYEES order by SALARY desc)
                where ROWNUM < 15);

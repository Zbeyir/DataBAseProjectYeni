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

--question: find the highest 14th salary

-- list salary high to low without duplicate values
--1. adim
select distinct SALARY
from EMPLOYEES
order by SALARY desc;

--2.adim
select *
from (select distinct SALARY from EMPLOYEES order by SALARY desc)
where ROWNUM < 15;

--3.adim ==> find the highest 14th salary(removing duplicate values)
select  min(SALARY)
from (select distinct SALARY from EMPLOYEES order by SALARY desc)
where ROWNUM < 15;

--4. adim ve sonuc ==> find the employees info who is making 14th highest  salary(without duplicates)
select * from EMPLOYEES
where SALARY = (select  min(SALARY)
                from (select distinct SALARY from EMPLOYEES order by SALARY desc)
                where ROWNUM < 15);






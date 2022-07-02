-- how to find employees information of who is making highest salary in the company

--- bu büyük ten kücüge siraliyor
select * from EMPLOYEES
order by SALARY desc ;

-- get me the highest salary
select max(SALARY) from EMPLOYEES;

-- highest salary employee information
-- cözüm 2 asamli ilkini salla
select *
from EMPLOYEES
where SALARY = 24000;

-- another way --> yukari daki 2 yolun birlesimi
-- subquery solution in one shot
-- bu cözüm static degil dynamic, yani degisiklileri algilayacak
select *
from EMPLOYEES
where SALARY = (select max(SALARY) from EMPLOYEES);


-- finding second highest salary
-- get highest salary first
select max(SALARY) from EMPLOYEES;

-- highest after 24k
select max(SALARY)
from EMPLOYEES
where SALARY < 24000;

-- one shot combing two queries
select max(SALARY)
from EMPLOYEES
where SALARY < (select max(SALARY) from EMPLOYEES);

-- employee information of who is making second highest salary?
select *
from EMPLOYEES
where SALARY = 17000;

-- another way
select *
from EMPLOYEES
where SALARY = (select max(SALARY)
                from EMPLOYEES
                where SALARY < (select max(SALARY) from EMPLOYEES));

----------------
select *
from EMPLOYEES
where ROWNUM <= 11;

select *
from EMPLOYEES
order by SALARY desc;-- 1.adim bunu kopyala

-- list the employees who is making top 10 salary

-- get the first 10 people then order them high to low based on salary
-- yani sonuc bu degil
select *
from EMPLOYEES
where ROWNUM < 11
order by SALARY desc;

-- order all employees based on salary high to low the display only first 10 result
select *
from (select * from EMPLOYEES order by SALARY desc)-- 2.adim buraya from yaz parantez ac ve parntez in icine yapistir
where ROWNUM < 11;
-- desc yerine asc yazarsak tam tersi taban daki maastan alip siralayacak









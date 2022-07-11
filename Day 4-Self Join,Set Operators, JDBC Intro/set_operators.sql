select * from TESTERSZ;

select * from DEVELOPERSZ;

-- iki tabelyai birbirine bagladik

select * from TESTERSZ
union
select * from DEVELOPERSZ;

-- iki tabelyai birbirine bagladik, ama bu sefer grublar ayrildi

select * from TESTERSZ
union all
select * from DEVELOPERSZ;

-- artik names ' eler bakiyoruz cünkü sadece isimler tekrar ediyor , id ler ve maaslar farkil  :))
-- ve aralarin daki en önmeli farklardan biri degördügün gibi duplicate izin yok
-- ve 2. steven 'i silmis
select names from TESTERSZ
union
select names from DEVELOPERSZ;


select names from TESTERSZ
minus
select names from DEVELOPERSZ;

-- burada ikisinde de kesisim kümesinde ki elemanlar cikraildi listeden

select names from DEVELOPERSZ
minus
select names from TESTERSZ;

-- burada sadece kesisim kümesi
select names from DEVELOPERSZ
intersect
select names from TESTERSZ;


--how to find duplicate names in employees table

--1. adim
select FIRST_NAME
from EMPLOYEES
group by FIRST_NAME;

--2. adim
select FIRST_NAME,count(*)
from EMPLOYEES
group by FIRST_NAME;

-- 3. adim sonuc
select FIRST_NAME,count(*)
from EMPLOYEES
group by FIRST_NAME
having count(*) >1;

select  * from REGIONS;


select EMPLOYEE_ID,FIRST_NAME,LAST_NAME,SALARY
from EMPLOYEES
where ROWNUM <2;








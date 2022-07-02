-- get me average salary for IT_PROG;
select avg(SALARY) from EMPLOYEES
where JOB_ID = 'IT_PROG';

-- get me unique job_ids
select distinct  JOB_ID from EMPLOYEES;

-- her meslek gurubunun ortalama maasini aldik
select JOB_ID, avg(SALARY),count(*), sum(SALARY)
from EMPLOYEES
group by JOB_ID;

-- get me job_ids where their avg salary is more than 5k
select JOB_ID, avg(SALARY), count(*), sum(SALARY)
from EMPLOYEES
group by JOB_ID
having avg(SALARY) > 5000;

-- where ile yapinca 5000 bin altinda kileri guruba almiyor
-- ama yukaridaki gibi having ile yapinca toplam sayiyi aliyor,
-- ama 5000 'in üstünün de avg' ini listeye aliyor
-- yani soruda bizden istenen top grubun avg 5k 'nin üstünde olanlari listele
-- yani allta ki dogru sonuc degil
select JOB_ID, avg(SALARY), count(*), sum(SALARY)
from EMPLOYEES
where SALARY > 5000
group by JOB_ID ;
















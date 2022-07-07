select * from EMPLOYEES;

select * from DEPARTMENTS;

select FIRST_NAME,LAST_NAME,DEPARTMENT_NAME
from EMPLOYEES e join DEPARTMENTS d
on e.DEPARTMENT_ID = d.DEPARTMENT_ID;

/*
--burada sol (left) ' i ekelddik cpnkü tottalda 107 kisi var di
anun ismini göremedik onun icin sol tarfi ekledik
belki sirkete yeni katilmis onun icin departmani belli degil  :))
 */

select FIRST_NAME,LAST_NAME,DEPARTMENT_NAME
from EMPLOYEES e left join DEPARTMENTS d
on e.DEPARTMENT_ID = d.DEPARTMENT_ID;
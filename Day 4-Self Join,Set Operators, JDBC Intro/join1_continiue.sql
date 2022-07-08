select FIRST_NAME,LAST_NAME,CUSTOMERZ.ADDRESS_ID,ADDRESS,PHONE
from customerz left outer join ADDRESSZ
on customerz.address_id = ADDRESSZ.address_id
where ADDRESSZ.ADDRESS_ID is null ;

/*
-- assigi da sadece customerz yazdik yukaridaki adressz yerine ve sonuc degismedi ayni
-- ama yukarudaki saonuc kesin olarak dogru
cünkü eger customer table adresId verilmis se ve adres table adresId verilmemis ise
o zman bu basarisiz olur
 */
select FIRST_NAME,LAST_NAME,CUSTOMERZ.ADDRESS_ID,ADDRESS,PHONE
from customerz left outer join ADDRESSZ
on customerz.address_id = ADDRESSZ.address_id
where CUSTOMERZ.ADDRESS_ID is null ;



select *
from customerz full outer join ADDRESSZ
on customerz.address_id = ADDRESSZ.address_id
where ADDRESSZ.ADDRESS_ID is null or
CUSTOMERZ.ADDRESS_ID is null;






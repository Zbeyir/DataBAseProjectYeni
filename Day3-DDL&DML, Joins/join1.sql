select * from CUSTOMERZ;

select * from ADDRESSZ;

select FIRST_NAME,LAST_NAME,ADDRESS,PHONE
from customerz join ADDRESSZ
on customerz.address_id = ADDRESSZ.address_id;


select FIRST_NAME,LAST_NAME,CUSTOMERZ.ADDRESS_ID,ADDRESS,PHONE
from customerz join ADDRESSZ
on customerz.address_id = ADDRESSZ.address_id;


select FIRST_NAME,LAST_NAME,cz.ADDRESS_ID,ADDRESS,PHONE
from customerz cz join ADDRESSZ az  -- bu sutunda ***
on cz.address_id = az.address_id;
---*** burada bir bosluk birakip artik tek kisaltma kullaniyoruz oki..

select FIRST_NAME,LAST_NAME,cz.ADDRESS_ID,ADDRESS,PHONE
from customerz cz left join ADDRESSZ az  -- bu sutunda ***
on cz.address_id = az.address_id;

/*
 ***
 burada sol tarafi yada sag tarri (left) or (right) cz 'den sonra ekledik
 artik adresi olmayan lari da listeye ekledik
 ve adresleri olmadigi icin adres ksimi onlarin null cikti
 */


select FIRST_NAME,LAST_NAME,cz.ADDRESS_ID,ADDRESS,PHONE
from customerz cz right join ADDRESSZ az  -- bu sutunda ***
on cz.address_id = az.address_id;


select FIRST_NAME,LAST_NAME,cz.ADDRESS_ID,ADDRESS,PHONE
from customerz cz full join ADDRESSZ az  -- bu sutunda ***
on cz.address_id = az.address_id;
-- *** burada hepsi (full) eklendi artik



select r."ФИО", count(f.id_formuls) OVER(partition by f.id_read) as countbook
from readers r, formul f , operation o 
where r.id_read = f.id_read and f.id_operations = o.id_operations and o."Дата_выдачи" >= '2023-01-01'
order by countbook desc;
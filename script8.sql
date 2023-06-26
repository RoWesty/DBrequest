select r."ФИО", avg(b."Количество_страниц")
from formul f, book b, operation o, readers r
where r.id_read = f.id_read and b.id_books = f.id_books and f.id_operations = o.id_operations and o."Дата_возврата" is not null
group by r."ФИО"
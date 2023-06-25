select r."ФИО", b."Название_книги" 
from readers r, formul f, book b, operation o 
where r.id_read = f.id_read and f.id_books = b.id_books and f.id_operations = o.id_operations and o."Дата_возврата" is null
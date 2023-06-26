select count(f.id_books) as count_book
from operation o, formul f
where o.id_operations  = f.id_operations and o."Дата_выдачи" = current_date


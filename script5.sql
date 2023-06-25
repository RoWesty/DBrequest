select count(id_operations)
from operation o 
where o."Дата_выдачи" < (current_date - 14) and o."Дата_возврата" is null